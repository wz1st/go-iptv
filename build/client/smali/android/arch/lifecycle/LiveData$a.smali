.class abstract Landroid/arch/lifecycle/LiveData$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "a"
.end annotation


# instance fields
.field final c:Landroid/arch/lifecycle/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/k",
            "<TT;>;"
        }
    .end annotation
.end field

.field d:Z

.field e:I

.field final synthetic f:Landroid/arch/lifecycle/LiveData;


# direct methods
.method constructor <init>(Landroid/arch/lifecycle/LiveData;Landroid/arch/lifecycle/k;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/lifecycle/k",
            "<TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Landroid/arch/lifecycle/LiveData$a;->f:Landroid/arch/lifecycle/LiveData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/arch/lifecycle/LiveData$a;->e:I

    iput-object p2, p0, Landroid/arch/lifecycle/LiveData$a;->c:Landroid/arch/lifecycle/k;

    return-void
.end method


# virtual methods
.method a(Z)V
    .locals 5

    const/4 v1, 0x1

    iget-boolean v0, p0, Landroid/arch/lifecycle/LiveData$a;->d:Z

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean p1, p0, Landroid/arch/lifecycle/LiveData$a;->d:Z

    iget-object v0, p0, Landroid/arch/lifecycle/LiveData$a;->f:Landroid/arch/lifecycle/LiveData;

    invoke-static {v0}, Landroid/arch/lifecycle/LiveData;->c(Landroid/arch/lifecycle/LiveData;)I

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_1
    iget-object v2, p0, Landroid/arch/lifecycle/LiveData$a;->f:Landroid/arch/lifecycle/LiveData;

    invoke-static {v2}, Landroid/arch/lifecycle/LiveData;->c(Landroid/arch/lifecycle/LiveData;)I

    move-result v3

    iget-boolean v4, p0, Landroid/arch/lifecycle/LiveData$a;->d:Z

    if-eqz v4, :cond_5

    :goto_2
    add-int/2addr v1, v3

    invoke-static {v2, v1}, Landroid/arch/lifecycle/LiveData;->a(Landroid/arch/lifecycle/LiveData;I)I

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/arch/lifecycle/LiveData$a;->d:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/arch/lifecycle/LiveData$a;->f:Landroid/arch/lifecycle/LiveData;

    invoke-virtual {v0}, Landroid/arch/lifecycle/LiveData;->b()V

    :cond_2
    iget-object v0, p0, Landroid/arch/lifecycle/LiveData$a;->f:Landroid/arch/lifecycle/LiveData;

    invoke-static {v0}, Landroid/arch/lifecycle/LiveData;->c(Landroid/arch/lifecycle/LiveData;)I

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Landroid/arch/lifecycle/LiveData$a;->d:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/arch/lifecycle/LiveData$a;->f:Landroid/arch/lifecycle/LiveData;

    invoke-virtual {v0}, Landroid/arch/lifecycle/LiveData;->c()V

    :cond_3
    iget-boolean v0, p0, Landroid/arch/lifecycle/LiveData$a;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/arch/lifecycle/LiveData$a;->f:Landroid/arch/lifecycle/LiveData;

    invoke-static {v0, p0}, Landroid/arch/lifecycle/LiveData;->a(Landroid/arch/lifecycle/LiveData;Landroid/arch/lifecycle/LiveData$a;)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    const/4 v1, -0x1

    goto :goto_2
.end method

.method abstract a()Z
.end method

.method a(Landroid/arch/lifecycle/e;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method b()V
    .locals 0

    return-void
.end method
