.class public final La/k;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/k$a;
    }
.end annotation


# static fields
.field public static final a:La/k;

.field public static final b:La/k;

.field public static final c:La/k;

.field private static final d:[La/h;


# instance fields
.field private final e:Z

.field private final f:Z

.field private final g:[Ljava/lang/String;

.field private final h:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/16 v0, 0xd

    new-array v0, v0, [La/h;

    sget-object v1, La/h;->G:La/h;

    aput-object v1, v0, v4

    sget-object v1, La/h;->P:La/h;

    aput-object v1, v0, v3

    sget-object v1, La/h;->n:La/h;

    aput-object v1, v0, v5

    sget-object v1, La/h;->H:La/h;

    aput-object v1, v0, v6

    const/4 v1, 0x4

    sget-object v2, La/h;->E:La/h;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, La/h;->N:La/h;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, La/h;->Q:La/h;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, La/h;->l:La/h;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, La/h;->o:La/h;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, La/h;->aI:La/h;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, La/h;->aG:La/h;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, La/h;->aJ:La/h;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, La/h;->aF:La/h;

    aput-object v2, v0, v1

    sput-object v0, La/k;->d:[La/h;

    new-instance v0, La/k$a;

    invoke-direct {v0, v3}, La/k$a;-><init>(Z)V

    sget-object v1, La/k;->d:[La/h;

    invoke-virtual {v0, v1}, La/k$a;->a([La/h;)La/k$a;

    move-result-object v0

    new-array v1, v6, [La/ab;

    sget-object v2, La/ab;->d:La/ab;

    aput-object v2, v1, v4

    sget-object v2, La/ab;->c:La/ab;

    aput-object v2, v1, v3

    sget-object v2, La/ab;->b:La/ab;

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, La/k$a;->a([La/ab;)La/k$a;

    move-result-object v0

    invoke-virtual {v0, v3}, La/k$a;->a(Z)La/k$a;

    move-result-object v0

    invoke-virtual {v0}, La/k$a;->a()La/k;

    move-result-object v0

    sput-object v0, La/k;->c:La/k;

    new-instance v0, La/k$a;

    sget-object v1, La/k;->c:La/k;

    invoke-direct {v0, v1}, La/k$a;-><init>(La/k;)V

    new-array v1, v3, [La/ab;

    sget-object v2, La/ab;->b:La/ab;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, La/k$a;->a([La/ab;)La/k$a;

    move-result-object v0

    invoke-virtual {v0, v3}, La/k$a;->a(Z)La/k$a;

    move-result-object v0

    invoke-virtual {v0}, La/k$a;->a()La/k;

    move-result-object v0

    sput-object v0, La/k;->b:La/k;

    new-instance v0, La/k$a;

    invoke-direct {v0, v4}, La/k$a;-><init>(Z)V

    invoke-virtual {v0}, La/k$a;->a()La/k;

    move-result-object v0

    sput-object v0, La/k;->a:La/k;

    return-void
.end method

.method private constructor <init>(La/k$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, La/k$a;->a(La/k$a;)Z

    move-result v0

    iput-boolean v0, p0, La/k;->e:Z

    invoke-static {p1}, La/k$a;->b(La/k$a;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/k;->g:[Ljava/lang/String;

    invoke-static {p1}, La/k$a;->c(La/k$a;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/k;->h:[Ljava/lang/String;

    invoke-static {p1}, La/k$a;->d(La/k$a;)Z

    move-result v0

    iput-boolean v0, p0, La/k;->f:Z

    return-void
.end method

.method synthetic constructor <init>(La/k$a;B)V
    .locals 0

    invoke-direct {p0, p1}, La/k;-><init>(La/k$a;)V

    return-void
.end method

.method static synthetic a(La/k;)Z
    .locals 1

    iget-boolean v0, p0, La/k;->e:Z

    return v0
.end method

.method private static a([Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    array-length v1, p0

    if-eqz v1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    array-length v2, p0

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, p0, v1

    invoke-static {p1, v3}, La/a/c;->a([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method static synthetic b(La/k;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/k;->g:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(La/k;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/k;->h:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(La/k;)Z
    .locals 1

    iget-boolean v0, p0, La/k;->f:Z

    return v0
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "La/h;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, La/k;->g:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, La/k;->g:[Ljava/lang/String;

    array-length v0, v0

    new-array v1, v0, [La/h;

    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, La/k;->g:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, La/k;->g:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v2}, La/h;->a(Ljava/lang/String;)La/h;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-static {v1}, La/a/c;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method final a(Ljavax/net/ssl/SSLSocket;Z)V
    .locals 4

    iget-object v0, p0, La/k;->g:[Ljava/lang/String;

    if-eqz v0, :cond_3

    const-class v0, Ljava/lang/String;

    iget-object v1, p0, La/k;->g:[Ljava/lang/String;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, La/a/c;->a(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    move-object v1, v0

    :goto_0
    iget-object v0, p0, La/k;->h:[Ljava/lang/String;

    if-eqz v0, :cond_4

    const-class v0, Ljava/lang/String;

    iget-object v2, p0, La/k;->h:[Ljava/lang/String;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, La/a/c;->a(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :goto_1
    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "TLS_FALLBACK_SCSV"

    invoke-static {v2, v3}, La/a/c;->a([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const-string v2, "TLS_FALLBACK_SCSV"

    invoke-static {v1, v2}, La/a/c;->a([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    :cond_0
    new-instance v2, La/k$a;

    invoke-direct {v2, p0}, La/k$a;-><init>(La/k;)V

    invoke-virtual {v2, v1}, La/k$a;->a([Ljava/lang/String;)La/k$a;

    move-result-object v1

    invoke-virtual {v1, v0}, La/k$a;->b([Ljava/lang/String;)La/k$a;

    move-result-object v0

    invoke-virtual {v0}, La/k$a;->a()La/k;

    move-result-object v0

    iget-object v1, v0, La/k;->h:[Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, v0, La/k;->h:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    :cond_1
    iget-object v1, v0, La/k;->g:[Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v0, v0, La/k;->g:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public final a(Ljavax/net/ssl/SSLSocket;)Z
    .locals 2

    iget-boolean v0, p0, La/k;->e:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, La/k;->h:[Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, La/k;->h:[Ljava/lang/String;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, La/k;->a([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    iget-object v0, p0, La/k;->g:[Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, La/k;->g:[Ljava/lang/String;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, La/k;->a([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, La/k;->e:Z

    return v0
.end method

.method public final c()Z
    .locals 1

    iget-boolean v0, p0, La/k;->f:Z

    return v0
.end method

.method public final d()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "La/ab;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, La/k;->h:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, La/k;->h:[Ljava/lang/String;

    array-length v0, v0

    new-array v1, v0, [La/ab;

    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, La/k;->h:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, La/k;->h:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v2}, La/ab;->a(Ljava/lang/String;)La/ab;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-static {v1}, La/a/c;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    instance-of v1, p1, La/k;

    if-nez v1, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0

    :cond_2
    if-eq p1, p0, :cond_1

    check-cast p1, La/k;

    iget-boolean v1, p0, La/k;->e:Z

    iget-boolean v2, p1, La/k;->e:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, La/k;->e:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, La/k;->g:[Ljava/lang/String;

    iget-object v2, p1, La/k;->g:[Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, La/k;->h:[Ljava/lang/String;

    iget-object v2, p1, La/k;->h:[Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, La/k;->f:Z

    iget-boolean v2, p1, La/k;->f:Z

    if-ne v1, v2, :cond_0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    const/16 v0, 0x11

    iget-boolean v1, p0, La/k;->e:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, La/k;->g:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    iget-object v0, p0, La/k;->h:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    iget-boolean v0, p0, La/k;->f:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    add-int/lit16 v1, v1, 0x20f

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    :cond_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-boolean v0, p0, La/k;->e:Z

    if-nez v0, :cond_0

    const-string v0, "ConnectionSpec()"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, La/k;->g:[Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, La/k;->a()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v1, p0, La/k;->h:[Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, La/k;->d()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ConnectionSpec(cipherSuites="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", tlsVersions="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", supportsTlsExtensions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, La/k;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "[all enabled]"

    goto :goto_1

    :cond_2
    const-string v1, "[all enabled]"

    goto :goto_2
.end method
