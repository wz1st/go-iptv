.class final Lcom/b/a/c/b/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/a/c/h;


# instance fields
.field private final b:Lcom/b/a/c/h;

.field private final c:Lcom/b/a/c/h;


# direct methods
.method constructor <init>(Lcom/b/a/c/h;Lcom/b/a/c/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/b/a/c/b/c;->b:Lcom/b/a/c/h;

    iput-object p2, p0, Lcom/b/a/c/b/c;->c:Lcom/b/a/c/h;

    return-void
.end method


# virtual methods
.method public a(Ljava/security/MessageDigest;)V
    .locals 1

    iget-object v0, p0, Lcom/b/a/c/b/c;->b:Lcom/b/a/c/h;

    invoke-interface {v0, p1}, Lcom/b/a/c/h;->a(Ljava/security/MessageDigest;)V

    iget-object v0, p0, Lcom/b/a/c/b/c;->c:Lcom/b/a/c/h;

    invoke-interface {v0, p1}, Lcom/b/a/c/h;->a(Ljava/security/MessageDigest;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/b/a/c/b/c;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/b/a/c/b/c;

    iget-object v1, p0, Lcom/b/a/c/b/c;->b:Lcom/b/a/c/h;

    iget-object v2, p1, Lcom/b/a/c/b/c;->b:Lcom/b/a/c/h;

    invoke-interface {v1, v2}, Lcom/b/a/c/h;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/b/a/c/b/c;->c:Lcom/b/a/c/h;

    iget-object v2, p1, Lcom/b/a/c/b/c;->c:Lcom/b/a/c/h;

    invoke-interface {v1, v2}, Lcom/b/a/c/h;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/b/a/c/b/c;->b:Lcom/b/a/c/h;

    invoke-interface {v0}, Lcom/b/a/c/h;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/b/a/c/b/c;->c:Lcom/b/a/c/h;

    invoke-interface {v1}, Lcom/b/a/c/h;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataCacheKey{sourceKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/c/b/c;->b:Lcom/b/a/c/h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", signature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/c/b/c;->c:Lcom/b/a/c/h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
