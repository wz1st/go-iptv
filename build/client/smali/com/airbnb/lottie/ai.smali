.class Lcom/airbnb/lottie/ai;
.super Lcom/airbnb/lottie/d;


# instance fields
.field private c:Lcom/airbnb/lottie/an;

.field private d:Lcom/airbnb/lottie/ai;

.field private final e:Landroid/graphics/RectF;

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/ai;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Landroid/graphics/Paint;

.field private final h:Landroid/graphics/Paint;

.field private final i:Landroid/graphics/Paint;

.field private final j:Landroid/graphics/Paint;

.field private final k:Landroid/graphics/Paint;

.field private final l:Lcom/airbnb/lottie/ah;

.field private final m:Lcom/airbnb/lottie/aj;

.field private n:Lcom/airbnb/lottie/ai;

.field private o:I

.field private p:I


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/ah;Lcom/airbnb/lottie/aj;Landroid/graphics/drawable/Drawable$Callback;)V
    .locals 3

    const/4 v1, 0x1

    invoke-direct {p0, p3}, Lcom/airbnb/lottie/d;-><init>(Landroid/graphics/drawable/Drawable$Callback;)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/ai;->e:Landroid/graphics/RectF;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/ai;->f:Ljava/util/List;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/airbnb/lottie/ai;->g:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/airbnb/lottie/ai;->h:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/airbnb/lottie/ai;->i:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/ai;->j:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/airbnb/lottie/ai;->k:Landroid/graphics/Paint;

    iput-object p1, p0, Lcom/airbnb/lottie/ai;->l:Lcom/airbnb/lottie/ah;

    iput-object p2, p0, Lcom/airbnb/lottie/ai;->m:Lcom/airbnb/lottie/aj;

    invoke-virtual {p2}, Lcom/airbnb/lottie/aj;->a()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/ai;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Lcom/airbnb/lottie/ah;->j()Lcom/airbnb/lottie/ah$c;

    move-result-object v0

    sget-object v1, Lcom/airbnb/lottie/ah$c;->c:Lcom/airbnb/lottie/ah$c;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/ai;->h:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :goto_0
    iget-object v0, p0, Lcom/airbnb/lottie/ai;->i:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v0, p0, Lcom/airbnb/lottie/ai;->j:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-direct {p0}, Lcom/airbnb/lottie/ai;->i()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/ai;->h:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_0
.end method

.method private a(II)V
    .locals 0

    iput p1, p0, Lcom/airbnb/lottie/ai;->o:I

    iput p2, p0, Lcom/airbnb/lottie/ai;->p:I

    return-void
.end method

.method private a(Lcom/airbnb/lottie/an;)V
    .locals 3

    iput-object p1, p0, Lcom/airbnb/lottie/ai;->c:Lcom/airbnb/lottie/an;

    invoke-virtual {p1}, Lcom/airbnb/lottie/an;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/n;

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/ai;->a(Lcom/airbnb/lottie/n;)V

    iget-object v2, p0, Lcom/airbnb/lottie/ai;->a:Lcom/airbnb/lottie/n$a;

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/n;->a(Lcom/airbnb/lottie/n$a;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/airbnb/lottie/ai;->e:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/airbnb/lottie/ai;->i:Landroid/graphics/Paint;

    const/16 v3, 0x13

    invoke-virtual {p1, v0, v2, v3}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/airbnb/lottie/ai;->j:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/airbnb/lottie/ai;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/ai;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/ai;

    invoke-virtual {p0, p1, v0}, Lcom/airbnb/lottie/ai;->a(Landroid/graphics/Canvas;Lcom/airbnb/lottie/d;)V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p0}, Lcom/airbnb/lottie/ai;->a(Landroid/graphics/Canvas;Lcom/airbnb/lottie/d;)V

    invoke-virtual {p0}, Lcom/airbnb/lottie/ai;->d()Lcom/airbnb/lottie/ak;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/ak;->k()F

    move-result v0

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v0, p0, Lcom/airbnb/lottie/ai;->c:Lcom/airbnb/lottie/an;

    invoke-virtual {v0}, Lcom/airbnb/lottie/an;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_1

    iget-object v0, p0, Lcom/airbnb/lottie/ai;->c:Lcom/airbnb/lottie/an;

    invoke-virtual {v0}, Lcom/airbnb/lottie/an;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/am;

    iget-object v1, p0, Lcom/airbnb/lottie/ai;->c:Lcom/airbnb/lottie/an;

    invoke-virtual {v1}, Lcom/airbnb/lottie/an;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/n;

    invoke-virtual {v1}, Lcom/airbnb/lottie/n;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Path;

    sget-object v4, Lcom/airbnb/lottie/ai$2;->b:[I

    invoke-virtual {v0}, Lcom/airbnb/lottie/am;->a()Lcom/airbnb/lottie/am$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/am$b;->ordinal()I

    move-result v0

    aget v0, v4, v0

    packed-switch v0, :pswitch_data_0

    sget-object v0, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    invoke-virtual {v1, v0}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    :goto_2
    iget-object v0, p0, Lcom/airbnb/lottie/ai;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :pswitch_0
    sget-object v0, Landroid/graphics/Path$FillType;->INVERSE_WINDING:Landroid/graphics/Path$FillType;

    invoke-virtual {v1, v0}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private c(Landroid/graphics/Canvas;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/airbnb/lottie/ai;->m:Lcom/airbnb/lottie/aj;

    invoke-virtual {v0}, Lcom/airbnb/lottie/aj;->e()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/ai;->l:Lcom/airbnb/lottie/ah;

    invoke-virtual {v0}, Lcom/airbnb/lottie/ah;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/airbnb/lottie/ai;->d()Lcom/airbnb/lottie/ak;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/airbnb/lottie/ak;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0, p1, p0}, Lcom/airbnb/lottie/ai;->a(Landroid/graphics/Canvas;Lcom/airbnb/lottie/d;)V

    invoke-virtual {p0}, Lcom/airbnb/lottie/ai;->d()Lcom/airbnb/lottie/ak;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/lottie/ak;->k()F

    move-result v1

    invoke-virtual {p0}, Lcom/airbnb/lottie/ai;->d()Lcom/airbnb/lottie/ak;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/lottie/ak;->k()F

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v1, p0, Lcom/airbnb/lottie/ai;->k:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/airbnb/lottie/ai;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, p0, Lcom/airbnb/lottie/ai;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method private i()V
    .locals 8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/airbnb/lottie/ai;->l:Lcom/airbnb/lottie/ah;

    invoke-virtual {v0}, Lcom/airbnb/lottie/ah;->n()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/ai;->a(I)V

    iget-object v0, p0, Lcom/airbnb/lottie/ai;->l:Lcom/airbnb/lottie/ah;

    invoke-virtual {v0}, Lcom/airbnb/lottie/ah;->p()I

    move-result v0

    iget-object v1, p0, Lcom/airbnb/lottie/ai;->l:Lcom/airbnb/lottie/ah;

    invoke-virtual {v1}, Lcom/airbnb/lottie/ah;->o()I

    move-result v1

    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/airbnb/lottie/ai;->setBounds(IIII)V

    iget-object v0, p0, Lcom/airbnb/lottie/ai;->l:Lcom/airbnb/lottie/ah;

    invoke-virtual {v0}, Lcom/airbnb/lottie/ah;->m()Lcom/airbnb/lottie/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/j;->f()Lcom/airbnb/lottie/bm;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/ai;->a(Lcom/airbnb/lottie/bm;)V

    invoke-direct {p0}, Lcom/airbnb/lottie/ai;->l()V

    sget-object v0, Lcom/airbnb/lottie/ai$2;->a:[I

    iget-object v1, p0, Lcom/airbnb/lottie/ai;->l:Lcom/airbnb/lottie/ah;

    invoke-virtual {v1}, Lcom/airbnb/lottie/ah;->i()Lcom/airbnb/lottie/ah$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/lottie/ah$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/airbnb/lottie/ai;->l:Lcom/airbnb/lottie/ah;

    invoke-virtual {v0}, Lcom/airbnb/lottie/ah;->h()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/ai;->l:Lcom/airbnb/lottie/ah;

    invoke-virtual {v0}, Lcom/airbnb/lottie/ah;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/airbnb/lottie/an;

    iget-object v1, p0, Lcom/airbnb/lottie/ai;->l:Lcom/airbnb/lottie/ah;

    invoke-virtual {v1}, Lcom/airbnb/lottie/ah;->h()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/an;-><init>(Ljava/util/List;)V

    invoke-direct {p0, v0}, Lcom/airbnb/lottie/ai;->a(Lcom/airbnb/lottie/an;)V

    :cond_0
    new-instance v3, Landroid/support/v4/e/h;

    invoke-direct {v3}, Landroid/support/v4/e/h;-><init>()V

    iget-object v0, p0, Lcom/airbnb/lottie/ai;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/d;

    instance-of v1, v0, Lcom/airbnb/lottie/ai;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/airbnb/lottie/ai;

    invoke-virtual {v1}, Lcom/airbnb/lottie/ai;->h()J

    move-result-wide v4

    move-object v1, v0

    check-cast v1, Lcom/airbnb/lottie/ai;

    invoke-virtual {v3, v4, v5, v1}, Landroid/support/v4/e/h;->b(JLjava/lang/Object;)V

    check-cast v0, Lcom/airbnb/lottie/ai;

    iget-object v0, v0, Lcom/airbnb/lottie/ai;->d:Lcom/airbnb/lottie/ai;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/airbnb/lottie/ai;->h()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5, v0}, Landroid/support/v4/e/h;->b(JLjava/lang/Object;)V

    goto :goto_1

    :pswitch_0
    invoke-direct {p0}, Lcom/airbnb/lottie/ai;->j()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/airbnb/lottie/ai;->k()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/airbnb/lottie/ai;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/d;

    instance-of v1, v0, Lcom/airbnb/lottie/ai;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Lcom/airbnb/lottie/ai;

    invoke-virtual {v1}, Lcom/airbnb/lottie/ai;->e()Lcom/airbnb/lottie/ah;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/lottie/ah;->k()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Landroid/support/v4/e/h;->a(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/ai;

    if-eqz v1, :cond_4

    move-object v2, v0

    check-cast v2, Lcom/airbnb/lottie/ai;

    invoke-virtual {v2, v1}, Lcom/airbnb/lottie/ai;->a(Lcom/airbnb/lottie/ai;)V

    :cond_4
    check-cast v0, Lcom/airbnb/lottie/ai;

    iget-object v1, v0, Lcom/airbnb/lottie/ai;->d:Lcom/airbnb/lottie/ai;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/airbnb/lottie/ai;->e()Lcom/airbnb/lottie/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/ah;->k()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Landroid/support/v4/e/h;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/ai;

    if-eqz v0, :cond_3

    invoke-virtual {v1, v0}, Lcom/airbnb/lottie/ai;->a(Lcom/airbnb/lottie/ai;)V

    goto :goto_2

    :cond_5
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private j()V
    .locals 15

    const/4 v1, 0x0

    new-instance v14, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/airbnb/lottie/ai;->l:Lcom/airbnb/lottie/ah;

    invoke-virtual {v0}, Lcom/airbnb/lottie/ah;->l()Ljava/util/List;

    move-result-object v0

    invoke-direct {v14, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v14}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    const/4 v0, 0x0

    move v13, v0

    move-object v3, v1

    move-object v2, v1

    move-object v4, v1

    move-object v5, v1

    :goto_0
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    if-ge v13, v0, :cond_9

    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v0, v1, Lcom/airbnb/lottie/bd;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/airbnb/lottie/y;

    check-cast v1, Lcom/airbnb/lottie/bd;

    invoke-virtual {p0}, Lcom/airbnb/lottie/ai;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/airbnb/lottie/y;-><init>(Lcom/airbnb/lottie/bd;Lcom/airbnb/lottie/bc;Lcom/airbnb/lottie/bi;Lcom/airbnb/lottie/bj;Lcom/airbnb/lottie/j;Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/ai;->a(Lcom/airbnb/lottie/d;)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v13, 0x1

    move v13, v0

    goto :goto_0

    :cond_1
    instance-of v0, v1, Lcom/airbnb/lottie/j;

    if-eqz v0, :cond_2

    check-cast v1, Lcom/airbnb/lottie/j;

    move-object v5, v1

    goto :goto_1

    :cond_2
    instance-of v0, v1, Lcom/airbnb/lottie/bc;

    if-eqz v0, :cond_3

    check-cast v1, Lcom/airbnb/lottie/bc;

    move-object v2, v1

    goto :goto_1

    :cond_3
    instance-of v0, v1, Lcom/airbnb/lottie/bj;

    if-eqz v0, :cond_4

    check-cast v1, Lcom/airbnb/lottie/bj;

    move-object v4, v1

    goto :goto_1

    :cond_4
    instance-of v0, v1, Lcom/airbnb/lottie/bi;

    if-eqz v0, :cond_5

    check-cast v1, Lcom/airbnb/lottie/bi;

    move-object v3, v1

    goto :goto_1

    :cond_5
    instance-of v0, v1, Lcom/airbnb/lottie/bh;

    if-eqz v0, :cond_6

    move-object v7, v1

    check-cast v7, Lcom/airbnb/lottie/bh;

    new-instance v6, Lcom/airbnb/lottie/bg;

    iget-object v0, p0, Lcom/airbnb/lottie/ai;->m:Lcom/airbnb/lottie/aj;

    invoke-static {v0}, Lcom/airbnb/lottie/j$a;->a(Lcom/airbnb/lottie/aj;)Lcom/airbnb/lottie/j;

    move-result-object v11

    invoke-virtual {p0}, Lcom/airbnb/lottie/ai;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v12

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    invoke-direct/range {v6 .. v12}, Lcom/airbnb/lottie/bg;-><init>(Lcom/airbnb/lottie/bh;Lcom/airbnb/lottie/bc;Lcom/airbnb/lottie/bi;Lcom/airbnb/lottie/bj;Lcom/airbnb/lottie/j;Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {p0, v6}, Lcom/airbnb/lottie/ai;->a(Lcom/airbnb/lottie/d;)V

    goto :goto_1

    :cond_6
    instance-of v0, v1, Lcom/airbnb/lottie/ay;

    if-eqz v0, :cond_7

    move-object v7, v1

    check-cast v7, Lcom/airbnb/lottie/ay;

    new-instance v6, Lcom/airbnb/lottie/ax;

    iget-object v0, p0, Lcom/airbnb/lottie/ai;->m:Lcom/airbnb/lottie/aj;

    invoke-static {v0}, Lcom/airbnb/lottie/j$a;->a(Lcom/airbnb/lottie/aj;)Lcom/airbnb/lottie/j;

    move-result-object v11

    invoke-virtual {p0}, Lcom/airbnb/lottie/ai;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v12

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    invoke-direct/range {v6 .. v12}, Lcom/airbnb/lottie/ax;-><init>(Lcom/airbnb/lottie/ay;Lcom/airbnb/lottie/bc;Lcom/airbnb/lottie/bi;Lcom/airbnb/lottie/bj;Lcom/airbnb/lottie/j;Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {p0, v6}, Lcom/airbnb/lottie/ai;->a(Lcom/airbnb/lottie/d;)V

    goto :goto_1

    :cond_7
    instance-of v0, v1, Lcom/airbnb/lottie/p;

    if-eqz v0, :cond_8

    move-object v7, v1

    check-cast v7, Lcom/airbnb/lottie/p;

    new-instance v6, Lcom/airbnb/lottie/u;

    iget-object v0, p0, Lcom/airbnb/lottie/ai;->m:Lcom/airbnb/lottie/aj;

    invoke-static {v0}, Lcom/airbnb/lottie/j$a;->a(Lcom/airbnb/lottie/aj;)Lcom/airbnb/lottie/j;

    move-result-object v11

    invoke-virtual {p0}, Lcom/airbnb/lottie/ai;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v12

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    invoke-direct/range {v6 .. v12}, Lcom/airbnb/lottie/u;-><init>(Lcom/airbnb/lottie/p;Lcom/airbnb/lottie/bc;Lcom/airbnb/lottie/bi;Lcom/airbnb/lottie/bj;Lcom/airbnb/lottie/j;Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {p0, v6}, Lcom/airbnb/lottie/ai;->a(Lcom/airbnb/lottie/d;)V

    goto :goto_1

    :cond_8
    instance-of v0, v1, Lcom/airbnb/lottie/av;

    if-eqz v0, :cond_0

    move-object v7, v1

    check-cast v7, Lcom/airbnb/lottie/av;

    new-instance v6, Lcom/airbnb/lottie/au;

    iget-object v0, p0, Lcom/airbnb/lottie/ai;->m:Lcom/airbnb/lottie/aj;

    invoke-static {v0}, Lcom/airbnb/lottie/j$a;->a(Lcom/airbnb/lottie/aj;)Lcom/airbnb/lottie/j;

    move-result-object v11

    invoke-virtual {p0}, Lcom/airbnb/lottie/ai;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v12

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    invoke-direct/range {v6 .. v12}, Lcom/airbnb/lottie/au;-><init>(Lcom/airbnb/lottie/av;Lcom/airbnb/lottie/bc;Lcom/airbnb/lottie/bi;Lcom/airbnb/lottie/bj;Lcom/airbnb/lottie/j;Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {p0, v6}, Lcom/airbnb/lottie/ai;->a(Lcom/airbnb/lottie/d;)V

    goto/16 :goto_1

    :cond_9
    return-void
.end method

.method private k()V
    .locals 8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/airbnb/lottie/ai;->m:Lcom/airbnb/lottie/aj;

    iget-object v2, p0, Lcom/airbnb/lottie/ai;->l:Lcom/airbnb/lottie/ah;

    invoke-virtual {v2}, Lcom/airbnb/lottie/ah;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/aj;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v4, v0

    move-object v3, v1

    :goto_0
    if-ltz v4, :cond_0

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/ah;

    new-instance v2, Lcom/airbnb/lottie/ai;

    iget-object v6, p0, Lcom/airbnb/lottie/ai;->m:Lcom/airbnb/lottie/aj;

    invoke-virtual {p0}, Lcom/airbnb/lottie/ai;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v7

    invoke-direct {v2, v0, v6, v7}, Lcom/airbnb/lottie/ai;-><init>(Lcom/airbnb/lottie/ah;Lcom/airbnb/lottie/aj;Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v6, p0, Lcom/airbnb/lottie/ai;->l:Lcom/airbnb/lottie/ah;

    invoke-virtual {v6}, Lcom/airbnb/lottie/ah;->f()I

    move-result v6

    iget-object v7, p0, Lcom/airbnb/lottie/ai;->l:Lcom/airbnb/lottie/ah;

    invoke-virtual {v7}, Lcom/airbnb/lottie/ah;->g()I

    move-result v7

    invoke-direct {v2, v6, v7}, Lcom/airbnb/lottie/ai;->a(II)V

    if-eqz v3, :cond_2

    invoke-virtual {v3, v2}, Lcom/airbnb/lottie/ai;->b(Lcom/airbnb/lottie/ai;)V

    move-object v0, v1

    :goto_1
    add-int/lit8 v2, v4, -0x1

    move v4, v2

    move-object v3, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v2}, Lcom/airbnb/lottie/ai;->a(Lcom/airbnb/lottie/d;)V

    invoke-virtual {v0}, Lcom/airbnb/lottie/ah;->j()Lcom/airbnb/lottie/ah$c;

    move-result-object v6

    sget-object v7, Lcom/airbnb/lottie/ah$c;->b:Lcom/airbnb/lottie/ah$c;

    if-ne v6, v7, :cond_3

    move-object v0, v2

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lcom/airbnb/lottie/ah;->j()Lcom/airbnb/lottie/ah$c;

    move-result-object v0

    sget-object v6, Lcom/airbnb/lottie/ah$c;->c:Lcom/airbnb/lottie/ah$c;

    if-ne v0, v6, :cond_4

    move-object v0, v2

    goto :goto_1

    :cond_4
    move-object v0, v3

    goto :goto_1
.end method

.method private l()V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/airbnb/lottie/ai;->l:Lcom/airbnb/lottie/ah;

    invoke-virtual {v0}, Lcom/airbnb/lottie/ah;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v3, Lcom/airbnb/lottie/w;

    iget-object v0, p0, Lcom/airbnb/lottie/ai;->l:Lcom/airbnb/lottie/ah;

    invoke-virtual {v0}, Lcom/airbnb/lottie/ah;->b()Ljava/util/List;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/airbnb/lottie/w;-><init>(Ljava/util/List;)V

    invoke-virtual {v3}, Lcom/airbnb/lottie/w;->a()V

    new-instance v0, Lcom/airbnb/lottie/ai$1;

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/ai$1;-><init>(Lcom/airbnb/lottie/ai;)V

    invoke-virtual {v3, v0}, Lcom/airbnb/lottie/w;->a(Lcom/airbnb/lottie/n$a;)V

    invoke-virtual {v3}, Lcom/airbnb/lottie/w;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v4

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v2}, Lcom/airbnb/lottie/ai;->setVisible(ZZ)Z

    invoke-virtual {p0, v3}, Lcom/airbnb/lottie/ai;->a(Lcom/airbnb/lottie/n;)V

    :goto_1
    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1, v2}, Lcom/airbnb/lottie/ai;->setVisible(ZZ)Z

    goto :goto_1
.end method

.method private m()Lcom/airbnb/lottie/ai;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/ai;->n:Lcom/airbnb/lottie/ai;

    return-object v0
.end method


# virtual methods
.method public a(F)V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/ai;->l:Lcom/airbnb/lottie/ah;

    invoke-virtual {v0}, Lcom/airbnb/lottie/ah;->a()F

    move-result v0

    mul-float/2addr v0, p1

    invoke-super {p0, v0}, Lcom/airbnb/lottie/d;->a(F)V

    iget-object v1, p0, Lcom/airbnb/lottie/ai;->d:Lcom/airbnb/lottie/ai;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/airbnb/lottie/ai;->d:Lcom/airbnb/lottie/ai;

    invoke-virtual {v1, v0}, Lcom/airbnb/lottie/ai;->a(F)V

    :cond_0
    return-void
.end method

.method a(Lcom/airbnb/lottie/ai;)V
    .locals 0

    iput-object p1, p0, Lcom/airbnb/lottie/ai;->n:Lcom/airbnb/lottie/ai;

    return-void
.end method

.method b(Lcom/airbnb/lottie/ai;)V
    .locals 0

    iput-object p1, p0, Lcom/airbnb/lottie/ai;->d:Lcom/airbnb/lottie/ai;

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/airbnb/lottie/ai;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/ai;->g:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/ai;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/airbnb/lottie/ai;->n:Lcom/airbnb/lottie/ai;

    :goto_1
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/airbnb/lottie/ai;->f:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {v0}, Lcom/airbnb/lottie/ai;->m()Lcom/airbnb/lottie/ai;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/airbnb/lottie/ai;->d()Lcom/airbnb/lottie/ak;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/ak;->k()F

    move-result v0

    iget v2, p0, Lcom/airbnb/lottie/ai;->o:I

    if-nez v2, :cond_3

    iget v2, p0, Lcom/airbnb/lottie/ai;->p:I

    if-eqz v2, :cond_4

    :cond_3
    iget v2, p0, Lcom/airbnb/lottie/ai;->o:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    iget v3, p0, Lcom/airbnb/lottie/ai;->p:I

    int-to-float v3, v3

    mul-float/2addr v0, v3

    invoke-virtual {p1, v1, v1, v2, v0}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    :goto_2
    invoke-virtual {p0}, Lcom/airbnb/lottie/ai;->g()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/airbnb/lottie/ai;->f()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/ai;->a(Landroid/graphics/Canvas;)I

    move-result v2

    iget-object v0, p0, Lcom/airbnb/lottie/ai;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_3
    if-ltz v1, :cond_5

    iget-object v0, p0, Lcom/airbnb/lottie/ai;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/ai;

    invoke-virtual {p0, p1, v0}, Lcom/airbnb/lottie/ai;->a(Landroid/graphics/Canvas;Lcom/airbnb/lottie/d;)V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Lcom/airbnb/lottie/ai;->d()Lcom/airbnb/lottie/ak;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/ak;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/airbnb/lottie/ai;->d()Lcom/airbnb/lottie/ak;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/lottie/ak;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p1, v3, v3, v0, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto :goto_2

    :cond_5
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/ai;->c(Landroid/graphics/Canvas;)V

    invoke-super {p0, p1}, Lcom/airbnb/lottie/d;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/airbnb/lottie/ai;->e:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/airbnb/lottie/ai;->e:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/airbnb/lottie/ai;->g:Landroid/graphics/Paint;

    const/16 v3, 0x1f

    invoke-virtual {p1, v0, v2, v3}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/airbnb/lottie/ai;->j:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-direct {p0, p1}, Lcom/airbnb/lottie/ai;->c(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/airbnb/lottie/ai;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_4
    if-ltz v2, :cond_7

    iget-object v0, p0, Lcom/airbnb/lottie/ai;->f:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/ai;

    invoke-virtual {p0, p1, v0}, Lcom/airbnb/lottie/ai;->a(Landroid/graphics/Canvas;Lcom/airbnb/lottie/d;)V

    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_4

    :cond_7
    invoke-super {p0, p1}, Lcom/airbnb/lottie/d;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p0}, Lcom/airbnb/lottie/ai;->g()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0, p1}, Lcom/airbnb/lottie/ai;->b(Landroid/graphics/Canvas;)V

    :cond_8
    invoke-virtual {p0}, Lcom/airbnb/lottie/ai;->f()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/airbnb/lottie/ai;->e:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/airbnb/lottie/ai;->h:Landroid/graphics/Paint;

    const/16 v3, 0x13

    invoke-virtual {p1, v0, v2, v3}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/airbnb/lottie/ai;->j:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/airbnb/lottie/ai;->d:Lcom/airbnb/lottie/ai;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/ai;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_9
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0
.end method

.method e()Lcom/airbnb/lottie/ah;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/ai;->l:Lcom/airbnb/lottie/ah;

    return-object v0
.end method

.method f()Z
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/ai;->d:Lcom/airbnb/lottie/ai;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method g()Z
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/ai;->c:Lcom/airbnb/lottie/an;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/ai;->c:Lcom/airbnb/lottie/an;

    invoke-virtual {v0}, Lcom/airbnb/lottie/an;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method h()J
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/ai;->l:Lcom/airbnb/lottie/ah;

    invoke-virtual {v0}, Lcom/airbnb/lottie/ah;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/ai;->l:Lcom/airbnb/lottie/ah;

    invoke-virtual {v0}, Lcom/airbnb/lottie/ah;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
