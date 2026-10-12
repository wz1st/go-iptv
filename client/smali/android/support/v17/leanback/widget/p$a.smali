.class public Landroid/support/v17/leanback/widget/p$a;
.super Landroid/util/Property;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property",
        "<",
        "Landroid/support/v17/leanback/widget/p;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:I


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/p$a;->a:I

    return v0
.end method

.method public final a(Landroid/support/v17/leanback/widget/p;)Ljava/lang/Integer;
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/p$a;->a:I

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/p;->a(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/support/v17/leanback/widget/p;Ljava/lang/Integer;)V
    .locals 2

    iget v0, p0, Landroid/support/v17/leanback/widget/p$a;->a:I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/support/v17/leanback/widget/p;->a(II)V

    return-void
.end method

.method public synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroid/support/v17/leanback/widget/p;

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/p$a;->a(Landroid/support/v17/leanback/widget/p;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/support/v17/leanback/widget/p;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/p$a;->a(Landroid/support/v17/leanback/widget/p;Ljava/lang/Integer;)V

    return-void
.end method
