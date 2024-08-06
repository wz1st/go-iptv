.class Lcom/b/a/c/b/a/c$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/a/c/b/a/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/c/b/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/b/a/c/b/a/c$b;

.field private b:I

.field private c:I

.field private d:Landroid/graphics/Bitmap$Config;


# direct methods
.method public constructor <init>(Lcom/b/a/c/b/a/c$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/b/a/c/b/a/c$a;->a:Lcom/b/a/c/b/a/c$b;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/b/a/c/b/a/c$a;->a:Lcom/b/a/c/b/a/c$b;

    invoke-virtual {v0, p0}, Lcom/b/a/c/b/a/c$b;->a(Lcom/b/a/c/b/a/m;)V

    return-void
.end method

.method public a(IILandroid/graphics/Bitmap$Config;)V
    .locals 0

    iput p1, p0, Lcom/b/a/c/b/a/c$a;->b:I

    iput p2, p0, Lcom/b/a/c/b/a/c$a;->c:I

    iput-object p3, p0, Lcom/b/a/c/b/a/c$a;->d:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/b/a/c/b/a/c$a;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/b/a/c/b/a/c$a;

    iget v1, p0, Lcom/b/a/c/b/a/c$a;->b:I

    iget v2, p1, Lcom/b/a/c/b/a/c$a;->b:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/b/a/c/b/a/c$a;->c:I

    iget v2, p1, Lcom/b/a/c/b/a/c$a;->c:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/b/a/c/b/a/c$a;->d:Landroid/graphics/Bitmap$Config;

    iget-object v2, p1, Lcom/b/a/c/b/a/c$a;->d:Landroid/graphics/Bitmap$Config;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/b/a/c/b/a/c$a;->b:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/b/a/c/b/a/c$a;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/b/a/c/b/a/c$a;->d:Landroid/graphics/Bitmap$Config;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/c/b/a/c$a;->d:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0}, Landroid/graphics/Bitmap$Config;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/b/a/c/b/a/c$a;->b:I

    iget v1, p0, Lcom/b/a/c/b/a/c$a;->c:I

    iget-object v2, p0, Lcom/b/a/c/b/a/c$a;->d:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Lcom/b/a/c/b/a/c;->c(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
