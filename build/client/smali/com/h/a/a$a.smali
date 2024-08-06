.class Lcom/h/a/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/h/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/h/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/h/a/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/h/a/a;-><init>(Lcom/h/a/a$1;)V

    sput-object v0, Lcom/h/a/a$a;->a:Lcom/h/a/a;

    return-void
.end method

.method static synthetic a()Lcom/h/a/a;
    .locals 1

    sget-object v0, Lcom/h/a/a$a;->a:Lcom/h/a/a;

    return-object v0
.end method
