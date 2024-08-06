.class final Lcom/g/a/ab;
.super Lcom/g/a/q$d;


# instance fields
.field final synthetic a:Lcom/g/a/q;


# direct methods
.method constructor <init>(Lcom/g/a/q;)V
    .locals 1

    iput-object p1, p0, Lcom/g/a/ab;->a:Lcom/g/a/q;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/g/a/q$d;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/g/a/i;Lcom/g/a/h;)Lcom/g/a/q$d;
    .locals 2

    iget-object v0, p0, Lcom/g/a/ab;->a:Lcom/g/a/q;

    invoke-static {v0}, Lcom/g/a/q;->a(Lcom/g/a/q;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/g/a/h;->a()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    return-object v0
.end method
