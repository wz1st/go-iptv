.class public interface abstract Lcom/b/a/c/c/h;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/b/a/c/c/h;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final b:Lcom/b/a/c/c/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/b/a/c/c/h$1;

    invoke-direct {v0}, Lcom/b/a/c/c/h$1;-><init>()V

    sput-object v0, Lcom/b/a/c/c/h;->a:Lcom/b/a/c/c/h;

    new-instance v0, Lcom/b/a/c/c/j$a;

    invoke-direct {v0}, Lcom/b/a/c/c/j$a;-><init>()V

    invoke-virtual {v0}, Lcom/b/a/c/c/j$a;->a()Lcom/b/a/c/c/j;

    move-result-object v0

    sput-object v0, Lcom/b/a/c/c/h;->b:Lcom/b/a/c/c/h;

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
