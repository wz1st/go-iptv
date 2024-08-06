.class public Landroid/arch/lifecycle/j;
.super Landroid/arch/lifecycle/LiveData;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/arch/lifecycle/LiveData",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/arch/lifecycle/LiveData;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/arch/lifecycle/LiveData;->a(Ljava/lang/Object;)V

    return-void
.end method
