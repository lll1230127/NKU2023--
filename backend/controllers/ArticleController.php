<?php
namespace backend\controllers;

/**
*  Team: lllg,NKU
*  Coding by 郭昱杰 2111066
*  gii生成，有关文章的Controller，在此基础上做了一定修改
 */

use Yii;
use common\models\Article;
use common\models\ArticleSearch;
use common\models\Category;
use yii\filters\AccessControl;
use common\models\Tag;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\helpers\ArrayHelper;
use yii\web\UploadedFile;

class ArticleController extends Controller
{
  
    // 使用 AccessControl 行为来控制访问权限
    // 使用 VerbFilter 行为来限制某些操作只能使用 POST 请求
    public function behaviors()
    {
        return [
            'access'=>[
              'class'=>AccessControl::class,
              'rules'=>[
                  [
                      'allow'=>true,
                      'roles'=>['@']
                  ]
              ]
            ],
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'delete' => ['POST'],
                ],
            ],
        ];
    }

    public function actionIndex()
    {
        $searchModel = new ArticleSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }


    // 显示单个文章的详细信息页面。
    public function actionView($id)
    {
        return $this->render('view', [
            'model' => $this->findModel($id),
        ]);
    }

    // creat的响应
    public function actionCreate()
    {
        $model = new Article();

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->id]);
        }

        return $this->render('create', [
            'model' => $model,
        ]);
    }

    // update的响应
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->id]);
        }

        return $this->render('update', [
            'model' => $model,
        ]);
    }


    public function actionDelete($id)
    {
        $this->findModel($id)->delete();

        return $this->redirect(['index']);
    }
    protected function findModel($id)
    {
        if (($model = Article::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }

    public function actionSetImage($id)
    {
        $model = new \common\models\ImageUpload();

        if (Yii::$app->request->isPost) {

            $article = $this->findModel($id);

            $model->image = UploadedFile::getInstance($model, 'image');

            if ($article->saveImage($model->uploadFile($model->image, $article->image))) {
                return $this->redirect(['view', 'id' => $article->id]);
            }
        }

        return $this->render('image', ['model' => $model]);
    }

    public function actionSetCategory($id)
    {

        $article = $this->findModel($id);

        $categories = ArrayHelper::map(Category::find()->all(), 'id', 'title');

        $selectedCategory = $categories[1];

        if (Yii::$app->request->isPost) {
            $category = Yii::$app->request->post('category');
            if ($article->saveCategory($category)) {
                return $this->redirect(['view', 'id' => $article->id]);
            }
        }


        return $this->render('category', [
            'article' => $article,
            'selectedCategory' => $selectedCategory,
            'categories' => $categories
        ]);
    }


    public function actionPublish($id){
        $article = Article::findOne($id);
        $model = $this->findModel($id);
        if($article->publish())
        {
            return $this->redirect(['index']);
        }
    }
}
