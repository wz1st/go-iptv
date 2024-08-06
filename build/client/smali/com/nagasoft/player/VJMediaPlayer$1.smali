.class Lcom/nagasoft/player/VJMediaPlayer$1;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nagasoft/player/VJMediaPlayer;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nagasoft/player/VJMediaPlayer;


# direct methods
.method constructor <init>(Lcom/nagasoft/player/VJMediaPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/nagasoft/player/VJMediaPlayer$1;->this$0:Lcom/nagasoft/player/VJMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/nagasoft/player/VJMediaPlayer$1;->this$0:Lcom/nagasoft/player/VJMediaPlayer;

    invoke-static {v0}, Lcom/nagasoft/player/VJMediaPlayer;->access$000(Lcom/nagasoft/player/VJMediaPlayer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/nagasoft/player/VJMediaPlayer$1;->this$0:Lcom/nagasoft/player/VJMediaPlayer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nagasoft/player/VJMediaPlayer;->access$102(Lcom/nagasoft/player/VJMediaPlayer;Z)Z

    goto :goto_0
.end method
