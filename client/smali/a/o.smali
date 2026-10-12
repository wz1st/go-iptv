.class public interface abstract La/o;
.super Ljava/lang/Object;


# static fields
.field public static final a:La/o;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, La/af;

    invoke-direct {v0}, La/af;-><init>()V

    sput-object v0, La/o;->a:La/o;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end method
