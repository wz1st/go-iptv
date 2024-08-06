.class public Lcom/b/a/d/o;
.super Landroid/support/v4/app/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/b/a/d/o$a;
    }
.end annotation


# instance fields
.field private final X:Lcom/b/a/d/a;

.field private final Y:Lcom/b/a/d/m;

.field private final Z:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/b/a/d/o;",
            ">;"
        }
    .end annotation
.end field

.field private aa:Lcom/b/a/d/o;

.field private ab:Lcom/b/a/j;

.field private ac:Landroid/support/v4/app/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lcom/b/a/d/a;

    invoke-direct {v0}, Lcom/b/a/d/a;-><init>()V

    invoke-direct {p0, v0}, Lcom/b/a/d/o;-><init>(Lcom/b/a/d/a;)V

    return-void
.end method

.method public constructor <init>(Lcom/b/a/d/a;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    invoke-direct {p0}, Landroid/support/v4/app/e;-><init>()V

    new-instance v0, Lcom/b/a/d/o$a;

    invoke-direct {v0, p0}, Lcom/b/a/d/o$a;-><init>(Lcom/b/a/d/o;)V

    iput-object v0, p0, Lcom/b/a/d/o;->Y:Lcom/b/a/d/m;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/b/a/d/o;->Z:Ljava/util/Set;

    iput-object p1, p0, Lcom/b/a/d/o;->X:Lcom/b/a/d/a;

    return-void
.end method

.method private a(Landroid/support/v4/app/f;)V
    .locals 1

    invoke-direct {p0}, Lcom/b/a/d/o;->ae()V

    invoke-static {p1}, Lcom/b/a/c;->a(Landroid/content/Context;)Lcom/b/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/c;->g()Lcom/b/a/d/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/d/l;->b(Landroid/support/v4/app/f;)Lcom/b/a/d/o;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/d/o;->aa:Lcom/b/a/d/o;

    iget-object v0, p0, Lcom/b/a/d/o;->aa:Lcom/b/a/d/o;

    invoke-virtual {p0, v0}, Lcom/b/a/d/o;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/b/a/d/o;->aa:Lcom/b/a/d/o;

    invoke-direct {v0, p0}, Lcom/b/a/d/o;->a(Lcom/b/a/d/o;)V

    :cond_0
    return-void
.end method

.method private a(Lcom/b/a/d/o;)V
    .locals 1

    iget-object v0, p0, Lcom/b/a/d/o;->Z:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private ad()Landroid/support/v4/app/e;
    .locals 1

    invoke-virtual {p0}, Lcom/b/a/d/o;->l()Landroid/support/v4/app/e;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/d/o;->ac:Landroid/support/v4/app/e;

    goto :goto_0
.end method

.method private ae()V
    .locals 1

    iget-object v0, p0, Lcom/b/a/d/o;->aa:Lcom/b/a/d/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/d/o;->aa:Lcom/b/a/d/o;

    invoke-direct {v0, p0}, Lcom/b/a/d/o;->b(Lcom/b/a/d/o;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/d/o;->aa:Lcom/b/a/d/o;

    :cond_0
    return-void
.end method

.method private b(Lcom/b/a/d/o;)V
    .locals 1

    iget-object v0, p0, Lcom/b/a/d/o;->Z:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/support/v4/app/e;->a(Landroid/content/Context;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/b/a/d/o;->g()Landroid/support/v4/app/f;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/b/a/d/o;->a(Landroid/support/v4/app/f;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "SupportRMFragment"

    const/4 v2, 0x5

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SupportRMFragment"

    const-string v2, "Unable to register fragment with root"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public a(Lcom/b/a/j;)V
    .locals 0

    iput-object p1, p0, Lcom/b/a/d/o;->ab:Lcom/b/a/j;

    return-void
.end method

.method aa()Lcom/b/a/d/a;
    .locals 1

    iget-object v0, p0, Lcom/b/a/d/o;->X:Lcom/b/a/d/a;

    return-object v0
.end method

.method public ab()Lcom/b/a/j;
    .locals 1

    iget-object v0, p0, Lcom/b/a/d/o;->ab:Lcom/b/a/j;

    return-object v0
.end method

.method public ac()Lcom/b/a/d/m;
    .locals 1

    iget-object v0, p0, Lcom/b/a/d/o;->Y:Lcom/b/a/d/m;

    return-object v0
.end method

.method b(Landroid/support/v4/app/e;)V
    .locals 1

    iput-object p1, p0, Lcom/b/a/d/o;->ac:Landroid/support/v4/app/e;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/support/v4/app/e;->g()Landroid/support/v4/app/f;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v4/app/e;->g()Landroid/support/v4/app/f;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/b/a/d/o;->a(Landroid/support/v4/app/f;)V

    :cond_0
    return-void
.end method

.method public n()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/e;->n()V

    iget-object v0, p0, Lcom/b/a/d/o;->X:Lcom/b/a/d/a;

    invoke-virtual {v0}, Lcom/b/a/d/a;->a()V

    return-void
.end method

.method public q()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/e;->q()V

    iget-object v0, p0, Lcom/b/a/d/o;->X:Lcom/b/a/d/a;

    invoke-virtual {v0}, Lcom/b/a/d/a;->b()V

    return-void
.end method

.method public s()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/e;->s()V

    iget-object v0, p0, Lcom/b/a/d/o;->X:Lcom/b/a/d/a;

    invoke-virtual {v0}, Lcom/b/a/d/a;->c()V

    invoke-direct {p0}, Lcom/b/a/d/o;->ae()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroid/support/v4/app/e;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "{parent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/b/a/d/o;->ad()Landroid/support/v4/app/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/e;->u()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/d/o;->ac:Landroid/support/v4/app/e;

    invoke-direct {p0}, Lcom/b/a/d/o;->ae()V

    return-void
.end method
