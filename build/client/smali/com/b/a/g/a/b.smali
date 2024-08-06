.class public Lcom/b/a/g/a/b;
.super Lcom/b/a/g/a/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/b/a/g/a/d",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/b/a/g/a/d;-><init>(Landroid/widget/ImageView;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/b/a/g/a/b;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/b/a/g/a/b;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
