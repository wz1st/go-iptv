.class final Landroid/support/v17/leanback/widget/w$1;
.super Landroid/util/Property;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property",
        "<",
        "Landroid/support/v17/leanback/widget/w;",
        "Ljava/lang/Integer;",
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
.method public a(Landroid/support/v17/leanback/widget/w;)Ljava/lang/Integer;
    .locals 1

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/w;->getStreamPosition()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/support/v17/leanback/widget/w;Ljava/lang/Integer;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/w;->setStreamPosition(I)V

    return-void
.end method

.method public synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroid/support/v17/leanback/widget/w;

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/w$1;->a(Landroid/support/v17/leanback/widget/w;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/support/v17/leanback/widget/w;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/w$1;->a(Landroid/support/v17/leanback/widget/w;Ljava/lang/Integer;)V

    return-void
.end method
