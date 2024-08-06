.class final Lcom/g/a/u;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/net/InetAddress;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/net/InetAddress;Ljava/net/InetAddress;)I
    .locals 1

    instance-of v0, p1, Ljava/net/Inet4Address;

    if-eqz v0, :cond_1

    instance-of v0, p2, Ljava/net/Inet4Address;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    instance-of v0, p1, Ljava/net/Inet6Address;

    if-eqz v0, :cond_2

    instance-of v0, p2, Ljava/net/Inet6Address;

    if-nez v0, :cond_0

    :cond_2
    instance-of v0, p1, Ljava/net/Inet4Address;

    if-eqz v0, :cond_3

    instance-of v0, p2, Ljava/net/Inet6Address;

    if-eqz v0, :cond_3

    const/4 v0, -0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/net/InetAddress;

    check-cast p2, Ljava/net/InetAddress;

    invoke-virtual {p0, p1, p2}, Lcom/g/a/u;->a(Ljava/net/InetAddress;Ljava/net/InetAddress;)I

    move-result v0

    return v0
.end method
