.class final Lcom/b/a/c/b/w;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/a/c/h;


# static fields
.field private static final b:Lcom/b/a/i/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/i/f",
            "<",
            "Ljava/lang/Class",
            "<*>;[B>;"
        }
    .end annotation
.end field


# instance fields
.field private final c:Lcom/b/a/c/b/a/b;

.field private final d:Lcom/b/a/c/h;

.field private final e:Lcom/b/a/c/h;

.field private final f:I

.field private final g:I

.field private final h:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final i:Lcom/b/a/c/j;

.field private final j:Lcom/b/a/c/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/c/m",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/b/a/i/f;

    const-wide/16 v2, 0x32

    invoke-direct {v0, v2, v3}, Lcom/b/a/i/f;-><init>(J)V

    sput-object v0, Lcom/b/a/c/b/w;->b:Lcom/b/a/i/f;

    return-void
.end method

.method constructor <init>(Lcom/b/a/c/b/a/b;Lcom/b/a/c/h;Lcom/b/a/c/h;IILcom/b/a/c/m;Ljava/lang/Class;Lcom/b/a/c/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/c/b/a/b;",
            "Lcom/b/a/c/h;",
            "Lcom/b/a/c/h;",
            "II",
            "Lcom/b/a/c/m",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/b/a/c/j;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/b/a/c/b/w;->c:Lcom/b/a/c/b/a/b;

    iput-object p2, p0, Lcom/b/a/c/b/w;->d:Lcom/b/a/c/h;

    iput-object p3, p0, Lcom/b/a/c/b/w;->e:Lcom/b/a/c/h;

    iput p4, p0, Lcom/b/a/c/b/w;->f:I

    iput p5, p0, Lcom/b/a/c/b/w;->g:I

    iput-object p6, p0, Lcom/b/a/c/b/w;->j:Lcom/b/a/c/m;

    iput-object p7, p0, Lcom/b/a/c/b/w;->h:Ljava/lang/Class;

    iput-object p8, p0, Lcom/b/a/c/b/w;->i:Lcom/b/a/c/j;

    return-void
.end method

.method private a()[B
    .locals 3

    sget-object v0, Lcom/b/a/c/b/w;->b:Lcom/b/a/i/f;

    iget-object v1, p0, Lcom/b/a/c/b/w;->h:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/b/a/i/f;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/b/a/c/b/w;->h:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/b/a/c/b/w;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sget-object v1, Lcom/b/a/c/b/w;->b:Lcom/b/a/i/f;

    iget-object v2, p0, Lcom/b/a/c/b/w;->h:Ljava/lang/Class;

    invoke-virtual {v1, v2, v0}, Lcom/b/a/i/f;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a(Ljava/security/MessageDigest;)V
    .locals 3

    iget-object v0, p0, Lcom/b/a/c/b/w;->c:Lcom/b/a/c/b/a/b;

    const/16 v1, 0x8

    const-class v2, [B

    invoke-interface {v0, v1, v2}, Lcom/b/a/c/b/a/b;->b(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget v2, p0, Lcom/b/a/c/b/w;->f:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget v2, p0, Lcom/b/a/c/b/w;->g:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    iget-object v1, p0, Lcom/b/a/c/b/w;->e:Lcom/b/a/c/h;

    invoke-interface {v1, p1}, Lcom/b/a/c/h;->a(Ljava/security/MessageDigest;)V

    iget-object v1, p0, Lcom/b/a/c/b/w;->d:Lcom/b/a/c/h;

    invoke-interface {v1, p1}, Lcom/b/a/c/h;->a(Ljava/security/MessageDigest;)V

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    iget-object v1, p0, Lcom/b/a/c/b/w;->j:Lcom/b/a/c/m;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/b/a/c/b/w;->j:Lcom/b/a/c/m;

    invoke-interface {v1, p1}, Lcom/b/a/c/m;->a(Ljava/security/MessageDigest;)V

    :cond_0
    iget-object v1, p0, Lcom/b/a/c/b/w;->i:Lcom/b/a/c/j;

    invoke-virtual {v1, p1}, Lcom/b/a/c/j;->a(Ljava/security/MessageDigest;)V

    invoke-direct {p0}, Lcom/b/a/c/b/w;->a()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/security/MessageDigest;->update([B)V

    iget-object v1, p0, Lcom/b/a/c/b/w;->c:Lcom/b/a/c/b/a/b;

    invoke-interface {v1, v0}, Lcom/b/a/c/b/a/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/b/a/c/b/w;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/b/a/c/b/w;

    iget v1, p0, Lcom/b/a/c/b/w;->g:I

    iget v2, p1, Lcom/b/a/c/b/w;->g:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/b/a/c/b/w;->f:I

    iget v2, p1, Lcom/b/a/c/b/w;->f:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/b/a/c/b/w;->j:Lcom/b/a/c/m;

    iget-object v2, p1, Lcom/b/a/c/b/w;->j:Lcom/b/a/c/m;

    invoke-static {v1, v2}, Lcom/b/a/i/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/b/a/c/b/w;->h:Ljava/lang/Class;

    iget-object v2, p1, Lcom/b/a/c/b/w;->h:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/b/a/c/b/w;->d:Lcom/b/a/c/h;

    iget-object v2, p1, Lcom/b/a/c/b/w;->d:Lcom/b/a/c/h;

    invoke-interface {v1, v2}, Lcom/b/a/c/h;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/b/a/c/b/w;->e:Lcom/b/a/c/h;

    iget-object v2, p1, Lcom/b/a/c/b/w;->e:Lcom/b/a/c/h;

    invoke-interface {v1, v2}, Lcom/b/a/c/h;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/b/a/c/b/w;->i:Lcom/b/a/c/j;

    iget-object v2, p1, Lcom/b/a/c/b/w;->i:Lcom/b/a/c/j;

    invoke-virtual {v1, v2}, Lcom/b/a/c/j;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/b/a/c/b/w;->d:Lcom/b/a/c/h;

    invoke-interface {v0}, Lcom/b/a/c/h;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/b/a/c/b/w;->e:Lcom/b/a/c/h;

    invoke-interface {v1}, Lcom/b/a/c/h;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/b/a/c/b/w;->f:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/b/a/c/b/w;->g:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/b/a/c/b/w;->j:Lcom/b/a/c/m;

    if-eqz v1, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/b/a/c/b/w;->j:Lcom/b/a/c/m;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/b/a/c/b/w;->h:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/b/a/c/b/w;->i:Lcom/b/a/c/j;

    invoke-virtual {v1}, Lcom/b/a/c/j;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResourceCacheKey{sourceKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/c/b/w;->d:Lcom/b/a/c/h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", signature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/c/b/w;->e:Lcom/b/a/c/h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/b/a/c/b/w;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/b/a/c/b/w;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", decodedResourceClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/c/b/w;->h:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", transformation=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/c/b/w;->j:Lcom/b/a/c/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", options="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/c/b/w;->i:Lcom/b/a/c/j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
