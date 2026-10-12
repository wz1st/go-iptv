.class public Lcom/b/a/c/c/v$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/a/c/c/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/c/c/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/b/a/c/c/o",
        "<TModel;TModel;>;"
    }
.end annotation


# static fields
.field private static final a:Lcom/b/a/c/c/v$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/c/c/v$a",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/b/a/c/c/v$a;

    invoke-direct {v0}, Lcom/b/a/c/c/v$a;-><init>()V

    sput-object v0, Lcom/b/a/c/c/v$a;->a:Lcom/b/a/c/c/v$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/b/a/c/c/v$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/b/a/c/c/v$a",
            "<TT;>;"
        }
    .end annotation

    sget-object v0, Lcom/b/a/c/c/v$a;->a:Lcom/b/a/c/c/v$a;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/b/a/c/c/r;)Lcom/b/a/c/c/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/c/c/r;",
            ")",
            "Lcom/b/a/c/c/n",
            "<TModel;TModel;>;"
        }
    .end annotation

    invoke-static {}, Lcom/b/a/c/c/v;->a()Lcom/b/a/c/c/v;

    move-result-object v0

    return-object v0
.end method
