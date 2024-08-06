.class public Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;
.super Lcom/scwang/smartrefresh/layout/e/c;

# interfaces
.implements Lcom/scwang/smartrefresh/layout/a/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/scwang/smartrefresh/layout/e/c",
        "<",
        "Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;",
        ">;",
        "Lcom/scwang/smartrefresh/layout/a/e;"
    }
.end annotation


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field public static f:Ljava/lang/String;

.field public static g:Ljava/lang/String;


# instance fields
.field protected h:Ljava/lang/String;

.field protected i:Ljava/lang/String;

.field protected j:Ljava/lang/String;

.field protected k:Ljava/lang/String;

.field protected l:Ljava/lang/String;

.field protected m:Ljava/lang/String;

.field protected n:Ljava/lang/String;

.field protected o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->a:Ljava/lang/String;

    sput-object v0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->b:Ljava/lang/String;

    sput-object v0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->c:Ljava/lang/String;

    sput-object v0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->d:Ljava/lang/String;

    sput-object v0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->e:Ljava/lang/String;

    sput-object v0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->f:Ljava/lang/String;

    sput-object v0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10

    const/16 v9, 0x8

    const v8, -0x99999a

    const/4 v7, 0x0

    invoke-direct {p0, p1, p2, v7}, Lcom/scwang/smartrefresh/layout/e/c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v7, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->o:Z

    sget v0, Lcom/scwang/smartrefresh/layout/a$b;->srl_classics_footer:I

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    sget v0, Lcom/scwang/smartrefresh/layout/a$a;->srl_classics_arrow:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->t:Landroid/widget/ImageView;

    sget v1, Lcom/scwang/smartrefresh/layout/a$a;->srl_classics_progress:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->u:Landroid/widget/ImageView;

    sget v2, Lcom/scwang/smartrefresh/layout/a$a;->srl_classics_title:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->s:Landroid/widget/TextView;

    sget-object v2, Lcom/scwang/smartrefresh/layout/a$d;->ClassicsFooter:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    sget v5, Lcom/scwang/smartrefresh/layout/a$d;->ClassicsFooter_srlDrawableMarginRight:I

    const/high16 v6, 0x41a00000    # 20.0f

    invoke-static {v6}, Lcom/scwang/smartrefresh/layout/g/b;->a(F)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    sget v5, Lcom/scwang/smartrefresh/layout/a$d;->ClassicsFooter_srlDrawableArrowSize:I

    iget v6, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v5

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    sget v5, Lcom/scwang/smartrefresh/layout/a$d;->ClassicsFooter_srlDrawableArrowSize:I

    iget v6, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v5

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    sget v5, Lcom/scwang/smartrefresh/layout/a$d;->ClassicsFooter_srlDrawableProgressSize:I

    iget v6, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v5

    iput v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    sget v5, Lcom/scwang/smartrefresh/layout/a$d;->ClassicsFooter_srlDrawableProgressSize:I

    iget v6, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v5

    iput v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    sget v5, Lcom/scwang/smartrefresh/layout/a$d;->ClassicsFooter_srlDrawableSize:I

    iget v6, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v5

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    sget v5, Lcom/scwang/smartrefresh/layout/a$d;->ClassicsFooter_srlDrawableSize:I

    iget v6, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v5

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    sget v2, Lcom/scwang/smartrefresh/layout/a$d;->ClassicsFooter_srlDrawableSize:I

    iget v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {v4, v2, v5}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v2

    iput v2, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    sget v2, Lcom/scwang/smartrefresh/layout/a$d;->ClassicsFooter_srlDrawableSize:I

    iget v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {v4, v2, v5}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v2

    iput v2, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    sget v2, Lcom/scwang/smartrefresh/layout/a$d;->ClassicsFooter_srlFinishDuration:I

    iget v3, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->E:I

    invoke-virtual {v4, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->E:I

    sget-object v2, Lcom/scwang/smartrefresh/layout/b/c;->f:[Lcom/scwang/smartrefresh/layout/b/c;

    sget v3, Lcom/scwang/smartrefresh/layout/a$d;->ClassicsFooter_srlClassicsSpinnerStyle:I

    iget-object v5, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->x:Lcom/scwang/smartrefresh/layout/b/c;

    iget v5, v5, Lcom/scwang/smartrefresh/layout/b/c;->g:I

    invoke-virtual {v4, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->x:Lcom/scwang/smartrefresh/layout/b/c;

    sget v2, Lcom/scwang/smartrefresh/layout/a$d;->ClassicsFooter_srlDrawableArrow:I

    invoke-virtual {v4, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->t:Landroid/widget/ImageView;

    sget v3, Lcom/scwang/smartrefresh/layout/a$d;->ClassicsFooter_srlDrawableArrow:I

    invoke-virtual {v4, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_0
    sget v2, Lcom/scwang/smartrefresh/layout/a$d;->ClassicsFooter_srlDrawableProgress:I

    invoke-virtual {v4, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->u:Landroid/widget/ImageView;

    sget v3, Lcom/scwang/smartrefresh/layout/a$d;->ClassicsFooter_srlDrawableProgress:I

    invoke-virtual {v4, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_1
    sget v2, Lcom/scwang/smartrefresh/layout/a$d;->ClassicsFooter_srlTextSizeTitle:I

    invoke-virtual {v4, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->s:Landroid/widget/TextView;

    sget v3, Lcom/scwang/smartrefresh/layout/a$d;->ClassicsFooter_srlTextSizeTitle:I

    const/high16 v5, 0x41800000    # 16.0f

    invoke-static {v5}, Lcom/scwang/smartrefresh/layout/g/b;->a(F)I

    move-result v5

    invoke-virtual {v4, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v7, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_2
    sget v2, Lcom/scwang/smartrefresh/layout/a$d;->ClassicsFooter_srlPrimaryColor:I

    invoke-virtual {v4, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_3

    sget v2, Lcom/scwang/smartrefresh/layout/a$d;->ClassicsFooter_srlPrimaryColor:I

    invoke-virtual {v4, v2, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-super {p0, v2}, Lcom/scwang/smartrefresh/layout/e/c;->a(I)Lcom/scwang/smartrefresh/layout/e/c;

    :cond_3
    sget v2, Lcom/scwang/smartrefresh/layout/a$d;->ClassicsFooter_srlAccentColor:I

    invoke-virtual {v4, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_4

    sget v2, Lcom/scwang/smartrefresh/layout/a$d;->ClassicsFooter_srlAccentColor:I

    invoke-virtual {v4, v2, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-super {p0, v2}, Lcom/scwang/smartrefresh/layout/e/c;->b(I)Lcom/scwang/smartrefresh/layout/e/c;

    :cond_4
    sget v2, Lcom/scwang/smartrefresh/layout/a$d;->ClassicsFooter_srlTextPulling:I

    invoke-virtual {v4, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_7

    sget v2, Lcom/scwang/smartrefresh/layout/a$d;->ClassicsFooter_srlTextPulling:I

    invoke-virtual {v4, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->h:Ljava/lang/String;

    :goto_2
    sget v2, Lcom/scwang/smartrefresh/layout/a$d;->ClassicsFooter_srlTextRelease:I

    invoke-virtual {v4, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_9

    sget v2, Lcom/scwang/smartrefresh/layout/a$d;->ClassicsFooter_srlTextRelease:I

    invoke-virtual {v4, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->i:Ljava/lang/String;

    :goto_3
    sget v2, Lcom/scwang/smartrefresh/layout/a$d;->ClassicsFooter_srlTextLoading:I

    invoke-virtual {v4, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_b

    sget v2, Lcom/scwang/smartrefresh/layout/a$d;->ClassicsFooter_srlTextLoading:I

    invoke-virtual {v4, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->j:Ljava/lang/String;

    :goto_4
    sget v2, Lcom/scwang/smartrefresh/layout/a$d;->ClassicsFooter_srlTextRefreshing:I

    invoke-virtual {v4, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_d

    sget v2, Lcom/scwang/smartrefresh/layout/a$d;->ClassicsFooter_srlTextRefreshing:I

    invoke-virtual {v4, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->k:Ljava/lang/String;

    :goto_5
    sget v2, Lcom/scwang/smartrefresh/layout/a$d;->ClassicsFooter_srlTextFinish:I

    invoke-virtual {v4, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_f

    sget v2, Lcom/scwang/smartrefresh/layout/a$d;->ClassicsFooter_srlTextFinish:I

    invoke-virtual {v4, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->l:Ljava/lang/String;

    :goto_6
    sget v2, Lcom/scwang/smartrefresh/layout/a$d;->ClassicsFooter_srlTextFailed:I

    invoke-virtual {v4, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_11

    sget v2, Lcom/scwang/smartrefresh/layout/a$d;->ClassicsFooter_srlTextFailed:I

    invoke-virtual {v4, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->m:Ljava/lang/String;

    :goto_7
    sget v2, Lcom/scwang/smartrefresh/layout/a$d;->ClassicsFooter_srlTextNothing:I

    invoke-virtual {v4, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_13

    sget v2, Lcom/scwang/smartrefresh/layout/a$d;->ClassicsFooter_srlTextNothing:I

    invoke-virtual {v4, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->n:Ljava/lang/String;

    :goto_8
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->s:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v2

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->j:Ljava/lang/String;

    :goto_9
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    :goto_a
    return-void

    :cond_5
    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->t:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/scwang/smartrefresh/layout/e/a;

    invoke-direct {v2}, Lcom/scwang/smartrefresh/layout/e/a;-><init>()V

    iput-object v2, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->z:Lcom/scwang/smartrefresh/layout/e/d;

    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->z:Lcom/scwang/smartrefresh/layout/e/d;

    invoke-virtual {v2, v8}, Lcom/scwang/smartrefresh/layout/e/d;->a(I)V

    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->t:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->z:Lcom/scwang/smartrefresh/layout/e/d;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_6
    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->u:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_1

    new-instance v2, Lcom/scwang/smartrefresh/layout/e/e;

    invoke-direct {v2}, Lcom/scwang/smartrefresh/layout/e/e;-><init>()V

    iput-object v2, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->A:Lcom/scwang/smartrefresh/layout/e/d;

    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->A:Lcom/scwang/smartrefresh/layout/e/d;

    invoke-virtual {v2, v8}, Lcom/scwang/smartrefresh/layout/e/d;->a(I)V

    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->u:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->A:Lcom/scwang/smartrefresh/layout/e/d;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    :cond_7
    sget-object v2, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->a:Ljava/lang/String;

    if-eqz v2, :cond_8

    sget-object v2, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->a:Ljava/lang/String;

    iput-object v2, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->h:Ljava/lang/String;

    goto/16 :goto_2

    :cond_8
    sget v2, Lcom/scwang/smartrefresh/layout/a$c;->srl_footer_pulling:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->h:Ljava/lang/String;

    goto/16 :goto_2

    :cond_9
    sget-object v2, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->b:Ljava/lang/String;

    if-eqz v2, :cond_a

    sget-object v2, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->b:Ljava/lang/String;

    iput-object v2, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->i:Ljava/lang/String;

    goto/16 :goto_3

    :cond_a
    sget v2, Lcom/scwang/smartrefresh/layout/a$c;->srl_footer_release:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->i:Ljava/lang/String;

    goto/16 :goto_3

    :cond_b
    sget-object v2, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->c:Ljava/lang/String;

    if-eqz v2, :cond_c

    sget-object v2, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->c:Ljava/lang/String;

    iput-object v2, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->j:Ljava/lang/String;

    goto/16 :goto_4

    :cond_c
    sget v2, Lcom/scwang/smartrefresh/layout/a$c;->srl_footer_loading:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->j:Ljava/lang/String;

    goto/16 :goto_4

    :cond_d
    sget-object v2, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->d:Ljava/lang/String;

    if-eqz v2, :cond_e

    sget-object v2, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->d:Ljava/lang/String;

    iput-object v2, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->k:Ljava/lang/String;

    goto/16 :goto_5

    :cond_e
    sget v2, Lcom/scwang/smartrefresh/layout/a$c;->srl_footer_refreshing:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->k:Ljava/lang/String;

    goto/16 :goto_5

    :cond_f
    sget-object v2, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->e:Ljava/lang/String;

    if-eqz v2, :cond_10

    sget-object v2, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->e:Ljava/lang/String;

    iput-object v2, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->l:Ljava/lang/String;

    goto/16 :goto_6

    :cond_10
    sget v2, Lcom/scwang/smartrefresh/layout/a$c;->srl_footer_finish:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->l:Ljava/lang/String;

    goto/16 :goto_6

    :cond_11
    sget-object v2, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->f:Ljava/lang/String;

    if-eqz v2, :cond_12

    sget-object v2, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->f:Ljava/lang/String;

    iput-object v2, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->m:Ljava/lang/String;

    goto/16 :goto_7

    :cond_12
    sget v2, Lcom/scwang/smartrefresh/layout/a$c;->srl_footer_failed:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->m:Ljava/lang/String;

    goto/16 :goto_7

    :cond_13
    sget-object v2, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->g:Ljava/lang/String;

    if-eqz v2, :cond_14

    sget-object v2, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->g:Ljava/lang/String;

    iput-object v2, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->n:Ljava/lang/String;

    goto/16 :goto_8

    :cond_14
    sget v2, Lcom/scwang/smartrefresh/layout/a$c;->srl_footer_nothing:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->n:Ljava/lang/String;

    goto/16 :goto_8

    :cond_15
    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->h:Ljava/lang/String;

    goto/16 :goto_9

    :cond_16
    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_a
.end method


# virtual methods
.method public a(Lcom/scwang/smartrefresh/layout/a/i;Z)I
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/scwang/smartrefresh/layout/e/c;->a(Lcom/scwang/smartrefresh/layout/a/i;Z)I

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->o:Z

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->s:Landroid/widget/TextView;

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->l:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->E:I

    :goto_1
    return v0

    :cond_0
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->m:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(Lcom/scwang/smartrefresh/layout/a/i;Lcom/scwang/smartrefresh/layout/b/b;Lcom/scwang/smartrefresh/layout/b/b;)V
    .locals 4

    const/16 v3, 0x8

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->t:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->o:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter$1;->a:[I

    invoke-virtual {p3}, Lcom/scwang/smartrefresh/layout/b/b;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :pswitch_1
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->s:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x43340000    # 180.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    :pswitch_2
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->s:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->s:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->s:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public a(Z)Z
    .locals 3

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->o:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->o:Z

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->t:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->s:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_1
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->s:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public varargs setPrimaryColors([I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/footer/ClassicsFooter;->x:Lcom/scwang/smartrefresh/layout/b/c;

    sget-object v1, Lcom/scwang/smartrefresh/layout/b/c;->c:Lcom/scwang/smartrefresh/layout/b/c;

    if-ne v0, v1, :cond_0

    invoke-super {p0, p1}, Lcom/scwang/smartrefresh/layout/e/c;->setPrimaryColors([I)V

    :cond_0
    return-void
.end method
