.class Landroid/support/v17/leanback/widget/i;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/i$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/support/v17/leanback/widget/i$a;

.field public final b:Landroid/support/v17/leanback/widget/i$a;

.field private c:I

.field private d:Landroid/support/v17/leanback/widget/i$a;

.field private e:Landroid/support/v17/leanback/widget/i$a;


# direct methods
.method constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Landroid/support/v17/leanback/widget/i;->c:I

    new-instance v0, Landroid/support/v17/leanback/widget/i$a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/widget/i$a;-><init>(I)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/i;->a:Landroid/support/v17/leanback/widget/i$a;

    new-instance v0, Landroid/support/v17/leanback/widget/i$a;

    invoke-direct {v0, v2}, Landroid/support/v17/leanback/widget/i$a;-><init>(I)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/i;->b:Landroid/support/v17/leanback/widget/i$a;

    iget-object v0, p0, Landroid/support/v17/leanback/widget/i;->b:Landroid/support/v17/leanback/widget/i$a;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/i;->d:Landroid/support/v17/leanback/widget/i$a;

    iget-object v0, p0, Landroid/support/v17/leanback/widget/i;->a:Landroid/support/v17/leanback/widget/i$a;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/i;->e:Landroid/support/v17/leanback/widget/i$a;

    return-void
.end method


# virtual methods
.method public final a()Landroid/support/v17/leanback/widget/i$a;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/i;->d:Landroid/support/v17/leanback/widget/i$a;

    return-object v0
.end method

.method public final a(I)V
    .locals 1

    iput p1, p0, Landroid/support/v17/leanback/widget/i;->c:I

    iget v0, p0, Landroid/support/v17/leanback/widget/i;->c:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/i;->b:Landroid/support/v17/leanback/widget/i$a;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/i;->d:Landroid/support/v17/leanback/widget/i$a;

    iget-object v0, p0, Landroid/support/v17/leanback/widget/i;->a:Landroid/support/v17/leanback/widget/i$a;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/i;->e:Landroid/support/v17/leanback/widget/i$a;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/i;->a:Landroid/support/v17/leanback/widget/i$a;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/i;->d:Landroid/support/v17/leanback/widget/i$a;

    iget-object v0, p0, Landroid/support/v17/leanback/widget/i;->b:Landroid/support/v17/leanback/widget/i$a;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/i;->e:Landroid/support/v17/leanback/widget/i$a;

    goto :goto_0
.end method
