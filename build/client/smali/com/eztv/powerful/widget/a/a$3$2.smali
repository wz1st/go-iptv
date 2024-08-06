.class Lcom/eztv/powerful/widget/a/a$3$2;
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
        "Lcom/eztv/powerful/widget/a/b/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/eztv/powerful/widget/a/a$3;


# direct methods
.method constructor <init>(Lcom/eztv/powerful/widget/a/a$3;)V
    .locals 0

    iput-object p1, p0, Lcom/eztv/powerful/widget/a/a$3$2;->a:Lcom/eztv/powerful/widget/a/a$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/eztv/powerful/widget/a/b/a;Lcom/eztv/powerful/widget/a/b/a;)I
    .locals 3

    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    invoke-virtual {p1}, Lcom/eztv/powerful/widget/a/b/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/eztv/powerful/widget/a/b/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/eztv/powerful/widget/a/b/a;

    check-cast p2, Lcom/eztv/powerful/widget/a/b/a;

    invoke-virtual {p0, p1, p2}, Lcom/eztv/powerful/widget/a/a$3$2;->a(Lcom/eztv/powerful/widget/a/b/a;Lcom/eztv/powerful/widget/a/b/a;)I

    move-result v0

    return v0
.end method
