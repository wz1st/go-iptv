.class final Landroid/support/v17/leanback/widget/PagingIndicator$3;
.super Landroid/util/Property;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/PagingIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property",
        "<",
        "Landroid/support/v17/leanback/widget/PagingIndicator$a;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v17/leanback/widget/PagingIndicator$a;)Ljava/lang/Float;
    .locals 1

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/PagingIndicator$a;->e()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/support/v17/leanback/widget/PagingIndicator$a;Ljava/lang/Float;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/PagingIndicator$a;->b(F)V

    return-void
.end method

.method public synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroid/support/v17/leanback/widget/PagingIndicator$a;

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/PagingIndicator$3;->a(Landroid/support/v17/leanback/widget/PagingIndicator$a;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/support/v17/leanback/widget/PagingIndicator$a;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/PagingIndicator$3;->a(Landroid/support/v17/leanback/widget/PagingIndicator$a;Ljava/lang/Float;)V

    return-void
.end method
