.class Lcom/c/a/m$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/c/a/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/c/a/m;


# direct methods
.method private constructor <init>(Lcom/c/a/m;)V
    .locals 0

    iput-object p1, p0, Lcom/c/a/m$a;->a:Lcom/c/a/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/c/a/m;Lcom/c/a/m$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/c/a/m$a;-><init>(Lcom/c/a/m;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/c/a/m$a;->a:Lcom/c/a/m;

    invoke-static {v0}, Lcom/c/a/m;->a(Lcom/c/a/m;)V

    return-void
.end method
