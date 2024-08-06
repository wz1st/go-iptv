.class public Lcom/b/a/c/d/c/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/a/c/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/b/a/c/k",
        "<",
        "Landroid/graphics/drawable/Drawable;",
        "Landroid/graphics/drawable/Drawable;",
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
.method public a(Landroid/graphics/drawable/Drawable;IILcom/b/a/c/j;)Lcom/b/a/c/b/u;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            "II",
            "Lcom/b/a/c/j;",
            ")",
            "Lcom/b/a/c/b/u",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/b/a/c/d/c/c;->a(Landroid/graphics/drawable/Drawable;)Lcom/b/a/c/b/u;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;IILcom/b/a/c/j;)Lcom/b/a/c/b/u;
    .locals 1

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/b/a/c/d/c/e;->a(Landroid/graphics/drawable/Drawable;IILcom/b/a/c/j;)Lcom/b/a/c/b/u;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/graphics/drawable/Drawable;Lcom/b/a/c/j;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/b/a/c/j;)Z
    .locals 1

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, p2}, Lcom/b/a/c/d/c/e;->a(Landroid/graphics/drawable/Drawable;Lcom/b/a/c/j;)Z

    move-result v0

    return v0
.end method
