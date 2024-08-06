.class Landroid/support/d/a/i$c;
.super Landroid/support/d/a/i$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/d/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field final a:Landroid/graphics/Matrix;

.field final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/d/a/i$d;",
            ">;"
        }
    .end annotation
.end field

.field c:F

.field final d:Landroid/graphics/Matrix;

.field e:I

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:F

.field private l:[I

.field private m:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-direct {p0, v3}, Landroid/support/d/a/i$d;-><init>(Landroid/support/d/a/i$1;)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/support/d/a/i$c;->a:Landroid/graphics/Matrix;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/d/a/i$c;->b:Ljava/util/ArrayList;

    iput v1, p0, Landroid/support/d/a/i$c;->c:F

    iput v1, p0, Landroid/support/d/a/i$c;->f:F

    iput v1, p0, Landroid/support/d/a/i$c;->g:F

    iput v2, p0, Landroid/support/d/a/i$c;->h:F

    iput v2, p0, Landroid/support/d/a/i$c;->i:F

    iput v1, p0, Landroid/support/d/a/i$c;->j:F

    iput v1, p0, Landroid/support/d/a/i$c;->k:F

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/support/d/a/i$c;->d:Landroid/graphics/Matrix;

    iput-object v3, p0, Landroid/support/d/a/i$c;->m:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/support/d/a/i$c;Landroid/support/v4/e/a;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/d/a/i$c;",
            "Landroid/support/v4/e/a",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-direct {p0, v3}, Landroid/support/d/a/i$d;-><init>(Landroid/support/d/a/i$1;)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/support/d/a/i$c;->a:Landroid/graphics/Matrix;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/d/a/i$c;->b:Ljava/util/ArrayList;

    iput v1, p0, Landroid/support/d/a/i$c;->c:F

    iput v1, p0, Landroid/support/d/a/i$c;->f:F

    iput v1, p0, Landroid/support/d/a/i$c;->g:F

    iput v2, p0, Landroid/support/d/a/i$c;->h:F

    iput v2, p0, Landroid/support/d/a/i$c;->i:F

    iput v1, p0, Landroid/support/d/a/i$c;->j:F

    iput v1, p0, Landroid/support/d/a/i$c;->k:F

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/support/d/a/i$c;->d:Landroid/graphics/Matrix;

    iput-object v3, p0, Landroid/support/d/a/i$c;->m:Ljava/lang/String;

    iget v0, p1, Landroid/support/d/a/i$c;->c:F

    iput v0, p0, Landroid/support/d/a/i$c;->c:F

    iget v0, p1, Landroid/support/d/a/i$c;->f:F

    iput v0, p0, Landroid/support/d/a/i$c;->f:F

    iget v0, p1, Landroid/support/d/a/i$c;->g:F

    iput v0, p0, Landroid/support/d/a/i$c;->g:F

    iget v0, p1, Landroid/support/d/a/i$c;->h:F

    iput v0, p0, Landroid/support/d/a/i$c;->h:F

    iget v0, p1, Landroid/support/d/a/i$c;->i:F

    iput v0, p0, Landroid/support/d/a/i$c;->i:F

    iget v0, p1, Landroid/support/d/a/i$c;->j:F

    iput v0, p0, Landroid/support/d/a/i$c;->j:F

    iget v0, p1, Landroid/support/d/a/i$c;->k:F

    iput v0, p0, Landroid/support/d/a/i$c;->k:F

    iget-object v0, p1, Landroid/support/d/a/i$c;->l:[I

    iput-object v0, p0, Landroid/support/d/a/i$c;->l:[I

    iget-object v0, p1, Landroid/support/d/a/i$c;->m:Ljava/lang/String;

    iput-object v0, p0, Landroid/support/d/a/i$c;->m:Ljava/lang/String;

    iget v0, p1, Landroid/support/d/a/i$c;->e:I

    iput v0, p0, Landroid/support/d/a/i$c;->e:I

    iget-object v0, p0, Landroid/support/d/a/i$c;->m:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/d/a/i$c;->m:Ljava/lang/String;

    invoke-virtual {p2, v0, p0}, Landroid/support/v4/e/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Landroid/support/d/a/i$c;->d:Landroid/graphics/Matrix;

    iget-object v1, p1, Landroid/support/d/a/i$c;->d:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v3, p1, Landroid/support/d/a/i$c;->b:Ljava/util/ArrayList;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Landroid/support/d/a/i$c;

    if-eqz v2, :cond_2

    check-cast v0, Landroid/support/d/a/i$c;

    iget-object v2, p0, Landroid/support/d/a/i$c;->b:Ljava/util/ArrayList;

    new-instance v4, Landroid/support/d/a/i$c;

    invoke-direct {v4, v0, p2}, Landroid/support/d/a/i$c;-><init>(Landroid/support/d/a/i$c;Landroid/support/v4/e/a;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    instance-of v2, v0, Landroid/support/d/a/i$b;

    if-eqz v2, :cond_3

    new-instance v2, Landroid/support/d/a/i$b;

    check-cast v0, Landroid/support/d/a/i$b;

    invoke-direct {v2, v0}, Landroid/support/d/a/i$b;-><init>(Landroid/support/d/a/i$b;)V

    move-object v0, v2

    :goto_2
    iget-object v2, p0, Landroid/support/d/a/i$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Landroid/support/d/a/i$e;->n:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, v0, Landroid/support/d/a/i$e;->n:Ljava/lang/String;

    invoke-virtual {p2, v2, v0}, Landroid/support/v4/e/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    instance-of v2, v0, Landroid/support/d/a/i$a;

    if-eqz v2, :cond_4

    new-instance v2, Landroid/support/d/a/i$a;

    check-cast v0, Landroid/support/d/a/i$a;

    invoke-direct {v2, v0}, Landroid/support/d/a/i$a;-><init>(Landroid/support/d/a/i$a;)V

    move-object v0, v2

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown object in the tree!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    return-void
.end method

.method private a()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/support/d/a/i$c;->d:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Landroid/support/d/a/i$c;->d:Landroid/graphics/Matrix;

    iget v1, p0, Landroid/support/d/a/i$c;->f:F

    neg-float v1, v1

    iget v2, p0, Landroid/support/d/a/i$c;->g:F

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Landroid/support/d/a/i$c;->d:Landroid/graphics/Matrix;

    iget v1, p0, Landroid/support/d/a/i$c;->h:F

    iget v2, p0, Landroid/support/d/a/i$c;->i:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object v0, p0, Landroid/support/d/a/i$c;->d:Landroid/graphics/Matrix;

    iget v1, p0, Landroid/support/d/a/i$c;->c:F

    invoke-virtual {v0, v1, v3, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    iget-object v0, p0, Landroid/support/d/a/i$c;->d:Landroid/graphics/Matrix;

    iget v1, p0, Landroid/support/d/a/i$c;->j:F

    iget v2, p0, Landroid/support/d/a/i$c;->f:F

    add-float/2addr v1, v2

    iget v2, p0, Landroid/support/d/a/i$c;->k:F

    iget v3, p0, Landroid/support/d/a/i$c;->g:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method private a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/d/a/i$c;->l:[I

    const-string v0, "rotation"

    const/4 v1, 0x5

    iget v2, p0, Landroid/support/d/a/i$c;->c:F

    invoke-static {p1, p2, v0, v1, v2}, Landroid/support/v4/content/a/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Landroid/support/d/a/i$c;->c:F

    const/4 v0, 0x1

    iget v1, p0, Landroid/support/d/a/i$c;->f:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroid/support/d/a/i$c;->f:F

    const/4 v0, 0x2

    iget v1, p0, Landroid/support/d/a/i$c;->g:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroid/support/d/a/i$c;->g:F

    const-string v0, "scaleX"

    const/4 v1, 0x3

    iget v2, p0, Landroid/support/d/a/i$c;->h:F

    invoke-static {p1, p2, v0, v1, v2}, Landroid/support/v4/content/a/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Landroid/support/d/a/i$c;->h:F

    const-string v0, "scaleY"

    const/4 v1, 0x4

    iget v2, p0, Landroid/support/d/a/i$c;->i:F

    invoke-static {p1, p2, v0, v1, v2}, Landroid/support/v4/content/a/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Landroid/support/d/a/i$c;->i:F

    const-string v0, "translateX"

    const/4 v1, 0x6

    iget v2, p0, Landroid/support/d/a/i$c;->j:F

    invoke-static {p1, p2, v0, v1, v2}, Landroid/support/v4/content/a/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Landroid/support/d/a/i$c;->j:F

    const-string v0, "translateY"

    const/4 v1, 0x7

    iget v2, p0, Landroid/support/d/a/i$c;->k:F

    invoke-static {p1, p2, v0, v1, v2}, Landroid/support/v4/content/a/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Landroid/support/d/a/i$c;->k:F

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Landroid/support/d/a/i$c;->m:Ljava/lang/String;

    :cond_0
    invoke-direct {p0}, Landroid/support/d/a/i$c;->a()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1

    sget-object v0, Landroid/support/d/a/a;->b:[I

    invoke-static {p1, p3, p2, v0}, Landroid/support/v4/content/a/g;->a(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-direct {p0, v0, p4}, Landroid/support/d/a/i$c;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public a([I)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    move v2, v0

    :goto_0
    iget-object v0, p0, Landroid/support/d/a/i$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Landroid/support/d/a/i$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/d/a/i$d;

    invoke-virtual {v0, p1}, Landroid/support/d/a/i$d;->a([I)Z

    move-result v0

    or-int/2addr v2, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return v2
.end method

.method public b()Z
    .locals 3

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    iget-object v0, p0, Landroid/support/d/a/i$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Landroid/support/d/a/i$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/d/a/i$d;

    invoke-virtual {v0}, Landroid/support/d/a/i$d;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :cond_0
    return v2

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/support/d/a/i$c;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalMatrix()Landroid/graphics/Matrix;
    .locals 1

    iget-object v0, p0, Landroid/support/d/a/i$c;->d:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getPivotX()F
    .locals 1

    iget v0, p0, Landroid/support/d/a/i$c;->f:F

    return v0
.end method

.method public getPivotY()F
    .locals 1

    iget v0, p0, Landroid/support/d/a/i$c;->g:F

    return v0
.end method

.method public getRotation()F
    .locals 1

    iget v0, p0, Landroid/support/d/a/i$c;->c:F

    return v0
.end method

.method public getScaleX()F
    .locals 1

    iget v0, p0, Landroid/support/d/a/i$c;->h:F

    return v0
.end method

.method public getScaleY()F
    .locals 1

    iget v0, p0, Landroid/support/d/a/i$c;->i:F

    return v0
.end method

.method public getTranslateX()F
    .locals 1

    iget v0, p0, Landroid/support/d/a/i$c;->j:F

    return v0
.end method

.method public getTranslateY()F
    .locals 1

    iget v0, p0, Landroid/support/d/a/i$c;->k:F

    return v0
.end method

.method public setPivotX(F)V
    .locals 1

    iget v0, p0, Landroid/support/d/a/i$c;->f:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, Landroid/support/d/a/i$c;->f:F

    invoke-direct {p0}, Landroid/support/d/a/i$c;->a()V

    :cond_0
    return-void
.end method

.method public setPivotY(F)V
    .locals 1

    iget v0, p0, Landroid/support/d/a/i$c;->g:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, Landroid/support/d/a/i$c;->g:F

    invoke-direct {p0}, Landroid/support/d/a/i$c;->a()V

    :cond_0
    return-void
.end method

.method public setRotation(F)V
    .locals 1

    iget v0, p0, Landroid/support/d/a/i$c;->c:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, Landroid/support/d/a/i$c;->c:F

    invoke-direct {p0}, Landroid/support/d/a/i$c;->a()V

    :cond_0
    return-void
.end method

.method public setScaleX(F)V
    .locals 1

    iget v0, p0, Landroid/support/d/a/i$c;->h:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, Landroid/support/d/a/i$c;->h:F

    invoke-direct {p0}, Landroid/support/d/a/i$c;->a()V

    :cond_0
    return-void
.end method

.method public setScaleY(F)V
    .locals 1

    iget v0, p0, Landroid/support/d/a/i$c;->i:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, Landroid/support/d/a/i$c;->i:F

    invoke-direct {p0}, Landroid/support/d/a/i$c;->a()V

    :cond_0
    return-void
.end method

.method public setTranslateX(F)V
    .locals 1

    iget v0, p0, Landroid/support/d/a/i$c;->j:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, Landroid/support/d/a/i$c;->j:F

    invoke-direct {p0}, Landroid/support/d/a/i$c;->a()V

    :cond_0
    return-void
.end method

.method public setTranslateY(F)V
    .locals 1

    iget v0, p0, Landroid/support/d/a/i$c;->k:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, Landroid/support/d/a/i$c;->k:F

    invoke-direct {p0}, Landroid/support/d/a/i$c;->a()V

    :cond_0
    return-void
.end method
