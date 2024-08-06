.class Lcom/eztv/powerful/widget/a/a$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eztv/powerful/widget/a/a$3;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/eztv/powerful/widget/a/b/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/eztv/powerful/widget/a/a$3;


# direct methods
.method constructor <init>(Lcom/eztv/powerful/widget/a/a$3;)V
    .locals 0

    iput-object p1, p0, Lcom/eztv/powerful/widget/a/a$3$1;->a:Lcom/eztv/powerful/widget/a/a$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/eztv/powerful/widget/a/b/b;Lcom/eztv/powerful/widget/a/b/b;)I
    .locals 2

    invoke-virtual {p1}, Lcom/eztv/powerful/widget/a/b/b;->d()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2}, Lcom/eztv/powerful/widget/a/b/b;->d()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/eztv/powerful/widget/a/b/b;

    check-cast p2, Lcom/eztv/powerful/widget/a/b/b;

    invoke-virtual {p0, p1, p2}, Lcom/eztv/powerful/widget/a/a$3$1;->a(Lcom/eztv/powerful/widget/a/b/b;Lcom/eztv/powerful/widget/a/b/b;)I

    move-result v0

    return v0
.end method
