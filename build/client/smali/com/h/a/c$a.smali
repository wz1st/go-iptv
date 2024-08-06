.class Lcom/h/a/c$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/h/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/h/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/h/a/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/h/a/c;-><init>(Lcom/h/a/c$1;)V

    sput-object v0, Lcom/h/a/c$a;->a:Lcom/h/a/c;

    return-void
.end method

.method static synthetic a()Lcom/h/a/c;
    .locals 1

    sget-object v0, Lcom/h/a/c$a;->a:Lcom/h/a/c;

    return-object v0
.end method
