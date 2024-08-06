.class public final Lcom/b/a/c/i;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/b/a/c/i$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final a:Lcom/b/a/c/i$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/c/i$a",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final c:Lcom/b/a/c/i$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/c/i$a",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/String;

.field private volatile e:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/b/a/c/i$1;

    invoke-direct {v0}, Lcom/b/a/c/i$1;-><init>()V

    sput-object v0, Lcom/b/a/c/i;->a:Lcom/b/a/c/i$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/Object;Lcom/b/a/c/i$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;",
            "Lcom/b/a/c/i$a",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/b/a/i/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/c/i;->d:Ljava/lang/String;

    iput-object p2, p0, Lcom/b/a/c/i;->b:Ljava/lang/Object;

    invoke-static {p3}, Lcom/b/a/i/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/c/i$a;

    iput-object v0, p0, Lcom/b/a/c/i;->c:Lcom/b/a/c/i$a;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/b/a/c/i;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lcom/b/a/c/i",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/b/a/c/i;

    const/4 v1, 0x0

    invoke-static {}, Lcom/b/a/c/i;->c()Lcom/b/a/c/i$a;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/b/a/c/i;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/b/a/c/i$a;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Object;)Lcom/b/a/c/i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)",
            "Lcom/b/a/c/i",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/b/a/c/i;

    invoke-static {}, Lcom/b/a/c/i;->c()Lcom/b/a/c/i$a;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/b/a/c/i;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/b/a/c/i$a;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Object;Lcom/b/a/c/i$a;)Lcom/b/a/c/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;",
            "Lcom/b/a/c/i$a",
            "<TT;>;)",
            "Lcom/b/a/c/i",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/b/a/c/i;

    invoke-direct {v0, p0, p1, p2}, Lcom/b/a/c/i;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/b/a/c/i$a;)V

    return-object v0
.end method

.method private b()[B
    .locals 2

    iget-object v0, p0, Lcom/b/a/c/i;->e:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/b/a/c/i;->d:Ljava/lang/String;

    sget-object v1, Lcom/b/a/c/h;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/c/i;->e:[B

    :cond_0
    iget-object v0, p0, Lcom/b/a/c/i;->e:[B

    return-object v0
.end method

.method private static c()Lcom/b/a/c/i$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/b/a/c/i$a",
            "<TT;>;"
        }
    .end annotation

    sget-object v0, Lcom/b/a/c/i;->a:Lcom/b/a/c/i$a;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/b/a/c/i;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public a(Ljava/lang/Object;Ljava/security/MessageDigest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/security/MessageDigest;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/b/a/c/i;->c:Lcom/b/a/c/i$a;

    invoke-direct {p0}, Lcom/b/a/c/i;->b()[B

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/b/a/c/i$a;->a([BLjava/lang/Object;Ljava/security/MessageDigest;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/b/a/c/i;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/b/a/c/i;

    iget-object v0, p0, Lcom/b/a/c/i;->d:Ljava/lang/String;

    iget-object v1, p1, Lcom/b/a/c/i;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/b/a/c/i;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Option{key=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/c/i;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
