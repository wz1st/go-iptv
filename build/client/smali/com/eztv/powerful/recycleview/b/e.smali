.class public Lcom/eztv/powerful/recycleview/b/e;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/eztv/powerful/recycleview/b/e;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/eztv/powerful/recycleview/b/e;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/eztv/powerful/recycleview/b/e;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/eztv/powerful/recycleview/b/e;->c:Z

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/eztv/powerful/recycleview/b/e;->b:Ljava/lang/String;

    return-object v0
.end method
