.class public final Lcom/b/a/c/d/a/v;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/a/c/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/b/a/c/d/a/v$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/b/a/c/k",
        "<",
        "Landroid/graphics/Bitmap;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;IILcom/b/a/c/j;)Lcom/b/a/c/b/u;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "II",
            "Lcom/b/a/c/j;",
            ")",
            "Lcom/b/a/c/b/u",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/b/a/c/d/a/v$a;

    invoke-direct {v0, p1}, Lcom/b/a/c/d/a/v$a;-><init>(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;IILcom/b/a/c/j;)Lcom/b/a/c/b/u;
    .locals 1

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/b/a/c/d/a/v;->a(Landroid/graphics/Bitmap;IILcom/b/a/c/j;)Lcom/b/a/c/b/u;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/graphics/Bitmap;Lcom/b/a/c/j;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/b/a/c/j;)Z
    .locals 1

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/b/a/c/d/a/v;->a(Landroid/graphics/Bitmap;Lcom/b/a/c/j;)Z

    move-result v0

    return v0
.end method
