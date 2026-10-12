.class final Lcom/g/a/an;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/g/a/b;


# direct methods
.method constructor <init>(Lcom/g/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/g/a/an;->a:Lcom/g/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/g/a/an;->a:Lcom/g/a/b;

    invoke-virtual {v0}, Lcom/g/a/b;->m()V

    return-void
.end method
