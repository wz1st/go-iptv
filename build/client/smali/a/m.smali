.class public interface abstract La/m;
.super Ljava/lang/Object;


# static fields
.field public static final a:La/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, La/ae;

    invoke-direct {v0}, La/ae;-><init>()V

    sput-object v0, La/m;->a:La/m;

    return-void
.end method


# virtual methods
.method public abstract a(La/r;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/r;",
            ")",
            "Ljava/util/List",
            "<",
            "La/l;",
            ">;"
        }
    .end annotation
.end method

.method public abstract a(La/r;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/r;",
            "Ljava/util/List",
            "<",
            "La/l;",
            ">;)V"
        }
    .end annotation
.end method
