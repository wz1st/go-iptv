.class Lcom/eztv/powerful/d/h$c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eztv/powerful/d/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field a:I

.field b:Lcom/eztv/powerful/d/h$d;

.field final synthetic c:Lcom/eztv/powerful/d/h;


# direct methods
.method public constructor <init>(Lcom/eztv/powerful/d/h;ILcom/eztv/powerful/d/h$d;)V
    .locals 0

    iput-object p1, p0, Lcom/eztv/powerful/d/h$c;->c:Lcom/eztv/powerful/d/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/eztv/powerful/d/h$c;->b:Lcom/eztv/powerful/d/h$d;

    iput p2, p0, Lcom/eztv/powerful/d/h$c;->a:I

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
