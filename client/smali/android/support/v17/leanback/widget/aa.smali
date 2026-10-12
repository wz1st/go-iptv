.class Landroid/support/v17/leanback/widget/aa;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/aa$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/support/v17/leanback/widget/aa$a;

.field public final b:Landroid/support/v17/leanback/widget/aa$a;

.field private c:I

.field private d:Landroid/support/v17/leanback/widget/aa$a;

.field private e:Landroid/support/v17/leanback/widget/aa$a;


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v17/leanback/widget/aa;->c:I

    new-instance v0, Landroid/support/v17/leanback/widget/aa$a;

    const-string v1, "vertical"

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/widget/aa$a;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/aa;->a:Landroid/support/v17/leanback/widget/aa$a;

    new-instance v0, Landroid/support/v17/leanback/widget/aa$a;

    const-string v1, "horizontal"

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/widget/aa$a;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/aa;->b:Landroid/support/v17/leanback/widget/aa$a;

    iget-object v0, p0, Landroid/support/v17/leanback/widget/aa;->b:Landroid/support/v17/leanback/widget/aa$a;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/aa;->d:Landroid/support/v17/leanback/widget/aa$a;

    iget-object v0, p0, Landroid/support/v17/leanback/widget/aa;->a:Landroid/support/v17/leanback/widget/aa$a;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/aa;->e:Landroid/support/v17/leanback/widget/aa$a;

    return-void
.end method


# virtual methods
.method public final a()Landroid/support/v17/leanback/widget/aa$a;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/aa;->d:Landroid/support/v17/leanback/widget/aa$a;

    return-object v0
.end method

.method public final a(I)V
    .locals 1

    iput p1, p0, Landroid/support/v17/leanback/widget/aa;->c:I

    iget v0, p0, Landroid/support/v17/leanback/widget/aa;->c:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/aa;->b:Landroid/support/v17/leanback/widget/aa$a;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/aa;->d:Landroid/support/v17/leanback/widget/aa$a;

    iget-object v0, p0, Landroid/support/v17/leanback/widget/aa;->a:Landroid/support/v17/leanback/widget/aa$a;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/aa;->e:Landroid/support/v17/leanback/widget/aa$a;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/aa;->a:Landroid/support/v17/leanback/widget/aa$a;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/aa;->d:Landroid/support/v17/leanback/widget/aa$a;

    iget-object v0, p0, Landroid/support/v17/leanback/widget/aa;->b:Landroid/support/v17/leanback/widget/aa$a;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/aa;->e:Landroid/support/v17/leanback/widget/aa$a;

    goto :goto_0
.end method

.method public final b()Landroid/support/v17/leanback/widget/aa$a;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/aa;->e:Landroid/support/v17/leanback/widget/aa$a;

    return-object v0
.end method

.method public final c()V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/aa;->a()Landroid/support/v17/leanback/widget/aa$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/aa$a;->j()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "horizontal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/aa;->b:Landroid/support/v17/leanback/widget/aa$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; vertical="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/aa;->a:Landroid/support/v17/leanback/widget/aa$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
