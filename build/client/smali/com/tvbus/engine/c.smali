.class Lcom/tvbus/engine/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tvbus/engine/TVCore;


# direct methods
.method private constructor <init>(Lcom/tvbus/engine/TVCore;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tvbus/engine/c;->a:Lcom/tvbus/engine/TVCore;

    return-void
.end method

.method synthetic constructor <init>(Lcom/tvbus/engine/TVCore;Lcom/tvbus/engine/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tvbus/engine/c;-><init>(Lcom/tvbus/engine/TVCore;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/tvbus/engine/c;->a:Lcom/tvbus/engine/TVCore;

    const/16 v1, 0x219a

    invoke-virtual {v0, v1}, Lcom/tvbus/engine/TVCore;->setPlayPort(I)V

    iget-object v0, p0, Lcom/tvbus/engine/c;->a:Lcom/tvbus/engine/TVCore;

    const/16 v1, 0x1202

    invoke-virtual {v0, v1}, Lcom/tvbus/engine/TVCore;->setServPort(I)V

    iget-object v0, p0, Lcom/tvbus/engine/c;->a:Lcom/tvbus/engine/TVCore;

    invoke-static {}, Lcom/tvbus/engine/TVCore;->a()J

    move-result-wide v2

    new-instance v1, Lcom/tvbus/engine/bb;

    invoke-direct {v1}, Lcom/tvbus/engine/bb;-><init>()V

    invoke-static {v0, v2, v3, v1}, Lcom/tvbus/engine/TVCore;->a(Lcom/tvbus/engine/TVCore;JLandroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tvbus/engine/c;->a:Lcom/tvbus/engine/TVCore;

    invoke-virtual {v0}, Lcom/tvbus/engine/TVCore;->p2p_run()I

    :cond_0
    return-void
.end method
