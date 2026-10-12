.class Landroid/support/constraint/a/a/p$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/constraint/a/a/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/support/constraint/a/a/e;

.field private b:Landroid/support/constraint/a/a/e;

.field private c:I

.field private d:Landroid/support/constraint/a/a/e$b;

.field private e:I


# direct methods
.method public constructor <init>(Landroid/support/constraint/a/a/e;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/constraint/a/a/p$a;->a:Landroid/support/constraint/a/a/e;

    invoke-virtual {p1}, Landroid/support/constraint/a/a/e;->g()Landroid/support/constraint/a/a/e;

    move-result-object v0

    iput-object v0, p0, Landroid/support/constraint/a/a/p$a;->b:Landroid/support/constraint/a/a/e;

    invoke-virtual {p1}, Landroid/support/constraint/a/a/e;->e()I

    move-result v0

    iput v0, p0, Landroid/support/constraint/a/a/p$a;->c:I

    invoke-virtual {p1}, Landroid/support/constraint/a/a/e;->f()Landroid/support/constraint/a/a/e$b;

    move-result-object v0

    iput-object v0, p0, Landroid/support/constraint/a/a/p$a;->d:Landroid/support/constraint/a/a/e$b;

    invoke-virtual {p1}, Landroid/support/constraint/a/a/e;->h()I

    move-result v0

    iput v0, p0, Landroid/support/constraint/a/a/p$a;->e:I

    return-void
.end method


# virtual methods
.method public a(Landroid/support/constraint/a/a/f;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/constraint/a/a/p$a;->a:Landroid/support/constraint/a/a/e;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/e;->d()Landroid/support/constraint/a/a/e$c;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/constraint/a/a/f;->a(Landroid/support/constraint/a/a/e$c;)Landroid/support/constraint/a/a/e;

    move-result-object v0

    iput-object v0, p0, Landroid/support/constraint/a/a/p$a;->a:Landroid/support/constraint/a/a/e;

    iget-object v0, p0, Landroid/support/constraint/a/a/p$a;->a:Landroid/support/constraint/a/a/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/constraint/a/a/p$a;->a:Landroid/support/constraint/a/a/e;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/e;->g()Landroid/support/constraint/a/a/e;

    move-result-object v0

    iput-object v0, p0, Landroid/support/constraint/a/a/p$a;->b:Landroid/support/constraint/a/a/e;

    iget-object v0, p0, Landroid/support/constraint/a/a/p$a;->a:Landroid/support/constraint/a/a/e;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/e;->e()I

    move-result v0

    iput v0, p0, Landroid/support/constraint/a/a/p$a;->c:I

    iget-object v0, p0, Landroid/support/constraint/a/a/p$a;->a:Landroid/support/constraint/a/a/e;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/e;->f()Landroid/support/constraint/a/a/e$b;

    move-result-object v0

    iput-object v0, p0, Landroid/support/constraint/a/a/p$a;->d:Landroid/support/constraint/a/a/e$b;

    iget-object v0, p0, Landroid/support/constraint/a/a/p$a;->a:Landroid/support/constraint/a/a/e;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/e;->h()I

    move-result v0

    iput v0, p0, Landroid/support/constraint/a/a/p$a;->e:I

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/a/a/p$a;->b:Landroid/support/constraint/a/a/e;

    iput v1, p0, Landroid/support/constraint/a/a/p$a;->c:I

    sget-object v0, Landroid/support/constraint/a/a/e$b;->b:Landroid/support/constraint/a/a/e$b;

    iput-object v0, p0, Landroid/support/constraint/a/a/p$a;->d:Landroid/support/constraint/a/a/e$b;

    iput v1, p0, Landroid/support/constraint/a/a/p$a;->e:I

    goto :goto_0
.end method

.method public b(Landroid/support/constraint/a/a/f;)V
    .locals 5

    iget-object v0, p0, Landroid/support/constraint/a/a/p$a;->a:Landroid/support/constraint/a/a/e;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/e;->d()Landroid/support/constraint/a/a/e$c;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/constraint/a/a/f;->a(Landroid/support/constraint/a/a/e$c;)Landroid/support/constraint/a/a/e;

    move-result-object v0

    iget-object v1, p0, Landroid/support/constraint/a/a/p$a;->b:Landroid/support/constraint/a/a/e;

    iget v2, p0, Landroid/support/constraint/a/a/p$a;->c:I

    iget-object v3, p0, Landroid/support/constraint/a/a/p$a;->d:Landroid/support/constraint/a/a/e$b;

    iget v4, p0, Landroid/support/constraint/a/a/p$a;->e:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/constraint/a/a/e;->a(Landroid/support/constraint/a/a/e;ILandroid/support/constraint/a/a/e$b;I)Z

    return-void
.end method
