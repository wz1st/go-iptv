.class public Lcom/j/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/j/a/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/j/a/c$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:I


# instance fields
.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private final g:Landroid/content/Context;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/graphics/Typeface;

.field private j:Landroid/widget/Toast;

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:Z

.field private p:Z

.field private q:F

.field private r:Ljava/lang/String;

.field private s:Lcom/j/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/j/a/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/j/a/c;->a:Ljava/lang/String;

    const-string v0, "#555555"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/j/a/c;->b:I

    return-void
.end method

.method private constructor <init>(Lcom/j/a/c$a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x18

    iput v0, p0, Lcom/j/a/c;->c:I

    sget v0, Lcom/j/a/c;->b:I

    iput v0, p0, Lcom/j/a/c;->d:I

    const/16 v0, 0xe6

    iput v0, p0, Lcom/j/a/c;->e:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/j/a/c;->f:I

    invoke-static {p1}, Lcom/j/a/c$a;->a(Lcom/j/a/c$a;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/j/a/c;->g:Landroid/content/Context;

    invoke-static {p1}, Lcom/j/a/c$a;->b(Lcom/j/a/c$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/j/a/c;->r:Ljava/lang/String;

    invoke-static {p1}, Lcom/j/a/c$a;->c(Lcom/j/a/c$a;)I

    move-result v0

    iput v0, p0, Lcom/j/a/c;->f:I

    invoke-static {p1}, Lcom/j/a/c$a;->d(Lcom/j/a/c$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/j/a/c;->o:Z

    invoke-static {p1}, Lcom/j/a/c$a;->e(Lcom/j/a/c$a;)I

    move-result v0

    iput v0, p0, Lcom/j/a/c;->n:I

    invoke-static {p1}, Lcom/j/a/c$a;->f(Lcom/j/a/c$a;)I

    move-result v0

    iput v0, p0, Lcom/j/a/c;->d:I

    invoke-static {p1}, Lcom/j/a/c$a;->g(Lcom/j/a/c$a;)I

    move-result v0

    iput v0, p0, Lcom/j/a/c;->m:I

    invoke-static {p1}, Lcom/j/a/c$a;->h(Lcom/j/a/c$a;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/j/a/c;->q:F

    invoke-static {p1}, Lcom/j/a/c$a;->i(Lcom/j/a/c$a;)I

    move-result v0

    iput v0, p0, Lcom/j/a/c;->e:I

    invoke-static {p1}, Lcom/j/a/c$a;->j(Lcom/j/a/c$a;)I

    move-result v0

    iput v0, p0, Lcom/j/a/c;->c:I

    invoke-static {p1}, Lcom/j/a/c$a;->k(Lcom/j/a/c$a;)I

    move-result v0

    iput v0, p0, Lcom/j/a/c;->l:I

    invoke-static {p1}, Lcom/j/a/c$a;->l(Lcom/j/a/c$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/j/a/c;->p:Z

    invoke-static {p1}, Lcom/j/a/c$a;->m(Lcom/j/a/c$a;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/j/a/c;->i:Landroid/graphics/Typeface;

    new-instance v0, Lcom/j/a/a;

    iget v1, p0, Lcom/j/a/c;->n:I

    invoke-direct {v0, v1, p0}, Lcom/j/a/a;-><init>(ILcom/j/a/b;)V

    iput-object v0, p0, Lcom/j/a/c;->s:Lcom/j/a/a;

    return-void
.end method

.method synthetic constructor <init>(Lcom/j/a/c$a;Lcom/j/a/c$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/j/a/c;-><init>(Lcom/j/a/c$a;)V

    return-void
.end method

.method static synthetic c()I
    .locals 1

    sget v0, Lcom/j/a/c;->b:I

    return v0
.end method

.method private d()Landroid/graphics/drawable/GradientDrawable;
    .locals 3

    invoke-direct {p0}, Lcom/j/a/c;->h()V

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iget-object v1, p0, Lcom/j/a/c;->g:Landroid/content/Context;

    iget v2, p0, Lcom/j/a/c;->c:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/j/a/d;->a(Landroid/content/Context;F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    iget-object v1, p0, Lcom/j/a/c;->g:Landroid/content/Context;

    iget v2, p0, Lcom/j/a/c;->q:F

    invoke-static {v1, v2}, Lcom/j/a/d;->a(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/j/a/c;->m:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    iget v1, p0, Lcom/j/a/c;->d:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget v1, p0, Lcom/j/a/c;->e:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    return-object v0
.end method

.method private e()Landroid/view/View;
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/j/a/c;->j()V

    iget-object v0, p0, Lcom/j/a/c;->g:Landroid/content/Context;

    const/high16 v1, 0x41c80000    # 25.0f

    invoke-static {v0, v1}, Lcom/j/a/d;->a(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/j/a/c;->g:Landroid/content/Context;

    const v2, 0x4134cccd    # 11.3f

    invoke-static {v1, v2}, Lcom/j/a/d;->a(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    new-instance v2, Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/j/a/c;->g:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0, v1, v0, v1}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    invoke-direct {p0}, Lcom/j/a/c;->d()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lcom/j/a/c;->f()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget v0, p0, Lcom/j/a/c;->l:I

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/j/a/c;->g()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v2, v4, v1, v4, v1}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    :cond_0
    return-object v2
.end method

.method private f()Landroid/widget/TextView;
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/j/a/c;->i()V

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/j/a/c;->g:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/j/a/c;->h:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/j/a/c;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/j/a/c;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/j/a/c;->h:Landroid/widget/TextView;

    const/4 v1, 0x2

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/j/a/c;->h:Landroid/widget/TextView;

    iget v1, p0, Lcom/j/a/c;->f:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/j/a/c;->h:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/j/a/c;->l()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/j/a/c;->h:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    iget v0, p0, Lcom/j/a/c;->l:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/j/a/c;->g:Landroid/content/Context;

    const/high16 v1, 0x42240000    # 41.0f

    invoke-static {v0, v1}, Lcom/j/a/d;->a(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/j/a/c;->g:Landroid/content/Context;

    const/high16 v2, 0x41c80000    # 25.0f

    invoke-static {v1, v2}, Lcom/j/a/d;->a(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    invoke-static {}, Landroid/support/v4/d/a;->a()Landroid/support/v4/d/a;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/d/a;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/j/a/c;->h:Landroid/widget/TextView;

    invoke-virtual {v2, v1, v3, v0, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/j/a/c;->h:Landroid/widget/TextView;

    return-object v0

    :cond_1
    iget-object v2, p0, Lcom/j/a/c;->h:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v3, v1, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0
.end method

.method private g()Landroid/widget/ImageView;
    .locals 9

    const/4 v8, -0x2

    const/high16 v4, 0x41a00000    # 20.0f

    const/high16 v2, 0x41700000    # 15.0f

    const/4 v7, 0x0

    iget v0, p0, Lcom/j/a/c;->l:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/j/a/c;->g:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/j/a/d;->a(Landroid/content/Context;F)F

    move-result v0

    float-to-int v1, v0

    iget-object v0, p0, Lcom/j/a/c;->g:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/j/a/d;->a(Landroid/content/Context;F)F

    move-result v0

    float-to-int v2, v0

    iget-object v0, p0, Lcom/j/a/c;->g:Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/j/a/d;->a(Landroid/content/Context;F)F

    move-result v0

    float-to-int v3, v0

    iget-object v0, p0, Lcom/j/a/c;->g:Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/j/a/d;->a(Landroid/content/Context;F)F

    move-result v0

    float-to-int v4, v0

    new-instance v0, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/j/a/c;->g:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v5, p0, Lcom/j/a/c;->g:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p0, Lcom/j/a/c;->l:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lcom/j/a/c;->k()Landroid/view/animation/Animation;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    add-int/2addr v4, v1

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setMaxWidth(I)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setMaxHeight(I)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-static {}, Landroid/support/v4/d/a;->a()Landroid/support/v4/d/a;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/d/a;->b()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v7, v7, v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    :goto_0
    const/16 v1, 0xf

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {v3, v1, v7, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private h()V
    .locals 7

    const/4 v1, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget v0, p0, Lcom/j/a/c;->k:I

    if-lez v0, :cond_4

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    new-array v2, v6, [I

    const v3, 0x10101a8

    aput v3, v2, v5

    iget-object v3, p0, Lcom/j/a/c;->g:Landroid/content/Context;

    iget v4, p0, Lcom/j/a/c;->k:I

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    iget-object v3, p0, Lcom/j/a/c;->g:Landroid/content/Context;

    iget v4, p0, Lcom/j/a/c;->k:I

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    iget-object v3, p0, Lcom/j/a/c;->g:Landroid/content/Context;

    iget v4, p0, Lcom/j/a/c;->k:I

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_0

    sget v3, Lcom/j/a/c;->b:I

    invoke-virtual {v0, v5, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/j/a/c;->d:I

    :cond_0
    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const/high16 v3, 0x41c00000    # 24.0f

    invoke-virtual {v2, v5, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/j/a/c;->c:I

    :cond_1
    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_2

    const/high16 v3, 0x43660000    # 230.0f

    invoke-virtual {v1, v5, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/j/a/c;->e:I

    :cond_2
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_3

    const/4 v3, 0x0

    invoke-virtual {v1, v6, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Lcom/j/a/c;->q:F

    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/j/a/c;->m:I

    :cond_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_4
    return-void

    nop

    :array_0
    .array-data 4
        0x1010031
        0x1010406
    .end array-data

    :array_1
    .array-data 4
        0x101031f
        0x1010407
    .end array-data
.end method

.method private i()V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lcom/j/a/c;->k:I

    if-lez v2, :cond_3

    new-array v2, v0, [I

    const v3, 0x1010098

    aput v3, v2, v1

    new-array v3, v0, [I

    const v4, 0x10103ac

    aput v4, v3, v1

    new-array v4, v0, [I

    const v5, 0x1010097

    aput v5, v4, v1

    iget-object v5, p0, Lcom/j/a/c;->g:Landroid/content/Context;

    iget v6, p0, Lcom/j/a/c;->k:I

    invoke-virtual {v5, v6, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v2

    iget-object v5, p0, Lcom/j/a/c;->g:Landroid/content/Context;

    iget v6, p0, Lcom/j/a/c;->k:I

    invoke-virtual {v5, v6, v3}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v3

    iget-object v5, p0, Lcom/j/a/c;->g:Landroid/content/Context;

    iget v6, p0, Lcom/j/a/c;->k:I

    invoke-virtual {v5, v6, v4}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v4

    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, -0x1

    invoke-virtual {v2, v1, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, p0, Lcom/j/a/c;->f:I

    :cond_0
    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "fonts"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/j/a/c;->g:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-static {v6, v5}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    iput-object v5, p0, Lcom/j/a/c;->i:Landroid/graphics/Typeface;

    :cond_1
    :goto_0
    invoke-virtual {v4, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4, v1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    if-ne v5, v0, :cond_5

    :goto_1
    iput-boolean v0, p0, Lcom/j/a/c;->o:Z

    :cond_2
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    :cond_3
    return-void

    :cond_4
    invoke-static {v5, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    iput-object v5, p0, Lcom/j/a/c;->i:Landroid/graphics/Typeface;

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method private j()V
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lcom/j/a/c;->k:I

    if-lez v0, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x1010002

    aput v1, v0, v3

    iget-object v1, p0, Lcom/j/a/c;->g:Landroid/content/Context;

    iget v2, p0, Lcom/j/a/c;->k:I

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/j/a/c;->l:I

    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1
    return-void
.end method

.method private k()Landroid/view/animation/Animation;
    .locals 7

    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    iget-boolean v0, p0, Lcom/j/a/c;->p:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43b40000    # 360.0f

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private l()Landroid/graphics/Typeface;
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/j/a/c;->o:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/j/a/c;->i:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    const-string v0, "sans-serif-condensed"

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/j/a/c;->o:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/j/a/c;->i:Landroid/graphics/Typeface;

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/j/a/c;->i:Landroid/graphics/Typeface;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/j/a/c;->i:Landroid/graphics/Typeface;

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, "sans-serif-condensed"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    invoke-direct {p0}, Lcom/j/a/c;->k()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/j/a/c;->k()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    invoke-direct {p0}, Lcom/j/a/c;->k()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iput p1, p0, Lcom/j/a/c;->n:I

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    iput p1, p0, Lcom/j/a/c;->n:I

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "StyleableB\'s duration must either be LENGTH_LONG or LENGTH_SHORT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/j/a/c;->r:Ljava/lang/String;

    return-void
.end method

.method public b()V
    .locals 2

    new-instance v0, Landroid/widget/Toast;

    iget-object v1, p0, Lcom/j/a/c;->g:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/j/a/c;->j:Landroid/widget/Toast;

    iget-object v0, p0, Lcom/j/a/c;->j:Landroid/widget/Toast;

    iget v1, p0, Lcom/j/a/c;->n:I

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setDuration(I)V

    iget-object v0, p0, Lcom/j/a/c;->j:Landroid/widget/Toast;

    invoke-direct {p0}, Lcom/j/a/c;->e()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/j/a/c;->j:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-boolean v0, p0, Lcom/j/a/c;->p:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/j/a/c;->s:Lcom/j/a/a;

    invoke-virtual {v0}, Lcom/j/a/a;->a()V

    :cond_0
    return-void
.end method
