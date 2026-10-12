.class final Lcom/g/a/c/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/g/a/c/d$a;

.field final synthetic b:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/g/a/c/d$a;Ljava/lang/Exception;)V
    .locals 0

    iput-object p1, p0, Lcom/g/a/c/i;->a:Lcom/g/a/c/d$a;

    iput-object p2, p0, Lcom/g/a/c/i;->b:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/g/a/c/i;->a:Lcom/g/a/c/d$a;

    iget-object v1, p0, Lcom/g/a/c/i;->b:Ljava/lang/Exception;

    invoke-static {v0, v1}, Lcom/g/a/c/d$a;->a(Lcom/g/a/c/d$a;Ljava/lang/Exception;)V

    return-void
.end method
