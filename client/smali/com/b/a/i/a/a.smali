.class public final Lcom/b/a/i/a/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/b/a/i/a/a$b;,
        Lcom/b/a/i/a/a$c;,
        Lcom/b/a/i/a/a$d;,
        Lcom/b/a/i/a/a$a;
    }
.end annotation


# static fields
.field private static final a:Lcom/b/a/i/a/a$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/i/a/a$d",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/b/a/i/a/a$1;

    invoke-direct {v0}, Lcom/b/a/i/a/a$1;-><init>()V

    sput-object v0, Lcom/b/a/i/a/a;->a:Lcom/b/a/i/a/a$d;

    return-void
.end method

.method public static a()Landroid/support/v4/e/l$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Landroid/support/v4/e/l$a",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    const/16 v0, 0x14

    invoke-static {v0}, Lcom/b/a/i/a/a;->a(I)Landroid/support/v4/e/l$a;

    move-result-object v0

    return-object v0
.end method

.method public static a(I)Landroid/support/v4/e/l$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Landroid/support/v4/e/l$a",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    new-instance v0, Landroid/support/v4/e/l$c;

    invoke-direct {v0, p0}, Landroid/support/v4/e/l$c;-><init>(I)V

    new-instance v1, Lcom/b/a/i/a/a$2;

    invoke-direct {v1}, Lcom/b/a/i/a/a$2;-><init>()V

    new-instance v2, Lcom/b/a/i/a/a$3;

    invoke-direct {v2}, Lcom/b/a/i/a/a$3;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/b/a/i/a/a;->a(Landroid/support/v4/e/l$a;Lcom/b/a/i/a/a$a;Lcom/b/a/i/a/a$d;)Landroid/support/v4/e/l$a;

    move-result-object v0

    return-object v0
.end method

.method public static a(ILcom/b/a/i/a/a$a;)Landroid/support/v4/e/l$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/b/a/i/a/a$c;",
            ">(I",
            "Lcom/b/a/i/a/a$a",
            "<TT;>;)",
            "Landroid/support/v4/e/l$a",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Landroid/support/v4/e/l$b;

    invoke-direct {v0, p0}, Landroid/support/v4/e/l$b;-><init>(I)V

    invoke-static {v0, p1}, Lcom/b/a/i/a/a;->a(Landroid/support/v4/e/l$a;Lcom/b/a/i/a/a$a;)Landroid/support/v4/e/l$a;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/support/v4/e/l$a;Lcom/b/a/i/a/a$a;)Landroid/support/v4/e/l$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/b/a/i/a/a$c;",
            ">(",
            "Landroid/support/v4/e/l$a",
            "<TT;>;",
            "Lcom/b/a/i/a/a$a",
            "<TT;>;)",
            "Landroid/support/v4/e/l$a",
            "<TT;>;"
        }
    .end annotation

    invoke-static {}, Lcom/b/a/i/a/a;->b()Lcom/b/a/i/a/a$d;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/b/a/i/a/a;->a(Landroid/support/v4/e/l$a;Lcom/b/a/i/a/a$a;Lcom/b/a/i/a/a$d;)Landroid/support/v4/e/l$a;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/support/v4/e/l$a;Lcom/b/a/i/a/a$a;Lcom/b/a/i/a/a$d;)Landroid/support/v4/e/l$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/support/v4/e/l$a",
            "<TT;>;",
            "Lcom/b/a/i/a/a$a",
            "<TT;>;",
            "Lcom/b/a/i/a/a$d",
            "<TT;>;)",
            "Landroid/support/v4/e/l$a",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/b/a/i/a/a$b;

    invoke-direct {v0, p0, p1, p2}, Lcom/b/a/i/a/a$b;-><init>(Landroid/support/v4/e/l$a;Lcom/b/a/i/a/a$a;Lcom/b/a/i/a/a$d;)V

    return-object v0
.end method

.method public static b(ILcom/b/a/i/a/a$a;)Landroid/support/v4/e/l$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/b/a/i/a/a$c;",
            ">(I",
            "Lcom/b/a/i/a/a$a",
            "<TT;>;)",
            "Landroid/support/v4/e/l$a",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Landroid/support/v4/e/l$c;

    invoke-direct {v0, p0}, Landroid/support/v4/e/l$c;-><init>(I)V

    invoke-static {v0, p1}, Lcom/b/a/i/a/a;->a(Landroid/support/v4/e/l$a;Lcom/b/a/i/a/a$a;)Landroid/support/v4/e/l$a;

    move-result-object v0

    return-object v0
.end method

.method private static b()Lcom/b/a/i/a/a$d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/b/a/i/a/a$d",
            "<TT;>;"
        }
    .end annotation

    sget-object v0, Lcom/b/a/i/a/a;->a:Lcom/b/a/i/a/a$d;

    return-object v0
.end method
