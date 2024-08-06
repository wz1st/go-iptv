.class abstract Landroid/support/d/a/i$e;
.super Landroid/support/d/a/i$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/d/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "e"
.end annotation


# instance fields
.field protected m:[Landroid/support/v4/graphics/b$b;

.field n:Ljava/lang/String;

.field o:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/d/a/i$d;-><init>(Landroid/support/d/a/i$1;)V

    iput-object v0, p0, Landroid/support/d/a/i$e;->m:[Landroid/support/v4/graphics/b$b;

    return-void
.end method

.method public constructor <init>(Landroid/support/d/a/i$e;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/d/a/i$d;-><init>(Landroid/support/d/a/i$1;)V

    iput-object v0, p0, Landroid/support/d/a/i$e;->m:[Landroid/support/v4/graphics/b$b;

    iget-object v0, p1, Landroid/support/d/a/i$e;->n:Ljava/lang/String;

    iput-object v0, p0, Landroid/support/d/a/i$e;->n:Ljava/lang/String;

    iget v0, p1, Landroid/support/d/a/i$e;->o:I

    iput v0, p0, Landroid/support/d/a/i$e;->o:I

    iget-object v0, p1, Landroid/support/d/a/i$e;->m:[Landroid/support/v4/graphics/b$b;

    invoke-static {v0}, Landroid/support/v4/graphics/b;->a([Landroid/support/v4/graphics/b$b;)[Landroid/support/v4/graphics/b$b;

    move-result-object v0

    iput-object v0, p0, Landroid/support/d/a/i$e;->m:[Landroid/support/v4/graphics/b$b;

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Path;)V
    .locals 1

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Landroid/support/d/a/i$e;->m:[Landroid/support/v4/graphics/b$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/d/a/i$e;->m:[Landroid/support/v4/graphics/b$b;

    invoke-static {v0, p1}, Landroid/support/v4/graphics/b$b;->a([Landroid/support/v4/graphics/b$b;Landroid/graphics/Path;)V

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPathData()[Landroid/support/v4/graphics/b$b;
    .locals 1

    iget-object v0, p0, Landroid/support/d/a/i$e;->m:[Landroid/support/v4/graphics/b$b;

    return-object v0
.end method

.method public getPathName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/support/d/a/i$e;->n:Ljava/lang/String;

    return-object v0
.end method

.method public setPathData([Landroid/support/v4/graphics/b$b;)V
    .locals 1

    iget-object v0, p0, Landroid/support/d/a/i$e;->m:[Landroid/support/v4/graphics/b$b;

    invoke-static {v0, p1}, Landroid/support/v4/graphics/b;->a([Landroid/support/v4/graphics/b$b;[Landroid/support/v4/graphics/b$b;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/support/v4/graphics/b;->a([Landroid/support/v4/graphics/b$b;)[Landroid/support/v4/graphics/b$b;

    move-result-object v0

    iput-object v0, p0, Landroid/support/d/a/i$e;->m:[Landroid/support/v4/graphics/b$b;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/d/a/i$e;->m:[Landroid/support/v4/graphics/b$b;

    invoke-static {v0, p1}, Landroid/support/v4/graphics/b;->b([Landroid/support/v4/graphics/b$b;[Landroid/support/v4/graphics/b$b;)V

    goto :goto_0
.end method
