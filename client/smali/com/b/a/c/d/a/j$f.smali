.class Lcom/b/a/c/d/a/j$f;
.super Lcom/b/a/c/d/a/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/c/d/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/b/a/c/d/a/j;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IIII)F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public b(IIII)Lcom/b/a/c/d/a/j$g;
    .locals 1

    sget-object v0, Lcom/b/a/c/d/a/j$g;->b:Lcom/b/a/c/d/a/j$g;

    return-object v0
.end method
