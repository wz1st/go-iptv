.class public interface abstract La/a/c/j;
.super Ljava/lang/Object;


# static fields
.field public static final a:La/a/c/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, La/a/c/ae;

    invoke-direct {v0}, La/a/c/ae;-><init>()V

    sput-object v0, La/a/c/j;->a:La/a/c/j;

    return-void
.end method


# virtual methods
.method public abstract a(ILa/a/c/a;)V
.end method

.method public abstract a(ILb/d;IZ)Z
.end method

.method public abstract a(ILjava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "La/a/c/f;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract a(ILjava/util/List;Z)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "La/a/c/f;",
            ">;Z)Z"
        }
    .end annotation
.end method
