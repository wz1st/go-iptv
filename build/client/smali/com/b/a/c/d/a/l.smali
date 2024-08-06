.class final Lcom/b/a/c/d/a/l;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/b/a/c/b/a/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/b/a/c/d/a/l$1;

    invoke-direct {v0}, Lcom/b/a/c/d/a/l$1;-><init>()V

    sput-object v0, Lcom/b/a/c/d/a/l;->a:Lcom/b/a/c/b/a/e;

    return-void
.end method

.method static a(Lcom/b/a/c/b/a/e;Landroid/graphics/drawable/Drawable;II)Lcom/b/a/c/b/u;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/c/b/a/e;",
            "Landroid/graphics/drawable/Drawable;",
            "II)",
            "Lcom/b/a/c/b/u",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v1, 0x0

    instance-of v3, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    :goto_1
    invoke-static {v2, p0}, Lcom/b/a/c/d/a/d;->a(Landroid/graphics/Bitmap;Lcom/b/a/c/b/a/e;)Lcom/b/a/c/d/a/d;

    move-result-object v0

    return-object v0

    :cond_0
    instance-of v3, v0, Landroid/graphics/drawable/Animatable;

    if-nez v3, :cond_2

    invoke-static {p0, v0, p2, p3}, Lcom/b/a/c/d/a/l;->b(Lcom/b/a/c/b/a/e;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v0, 0x1

    move-object v2, v1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/b/a/c/d/a/l;->a:Lcom/b/a/c/b/a/e;

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private static b(Lcom/b/a/c/b/a/e;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v3, 0x5

    const/high16 v2, -0x80000000

    const/4 v0, 0x0

    if-ne p2, v2, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    if-gtz v1, :cond_1

    const-string v1, "DrawableToBitmap"

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "DrawableToBitmap"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to draw "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to Bitmap with Target.SIZE_ORIGINAL because the Drawable has no intrinsic width"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    if-ne p3, v2, :cond_2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-gtz v1, :cond_2

    const-string v1, "DrawableToBitmap"

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "DrawableToBitmap"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to draw "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to Bitmap with Target.SIZE_ORIGINAL because the Drawable has no intrinsic height"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    :cond_3
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    if-lez v0, :cond_4

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p3

    :cond_4
    invoke-static {}, Lcom/b/a/c/d/a/u;->a()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-interface {p0, p2, p3, v0}, Lcom/b/a/c/b/a/e;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    :try_start_0
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4, p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
