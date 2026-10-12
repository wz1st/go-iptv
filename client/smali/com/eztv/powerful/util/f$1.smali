.class final Lcom/eztv/powerful/util/f$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eztv/powerful/util/f;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/eztv/powerful/util/f$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/eztv/powerful/util/f$1;->a:Ljava/lang/String;

    const-string v1, "MTV"

    invoke-static {v0, v1}, Lcom/eztv/powerful/util/f;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
