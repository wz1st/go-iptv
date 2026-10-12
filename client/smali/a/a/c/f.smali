.class public final La/a/c/f;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lb/e;

.field public static final b:Lb/e;

.field public static final c:Lb/e;

.field public static final d:Lb/e;

.field public static final e:Lb/e;

.field public static final f:Lb/e;

.field public static final g:Lb/e;


# instance fields
.field final h:I

.field public final i:Lb/e;

.field public final j:Lb/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ":status"

    invoke-static {v0}, Lb/e;->a(Ljava/lang/String;)Lb/e;

    move-result-object v0

    sput-object v0, La/a/c/f;->a:Lb/e;

    const-string v0, ":method"

    invoke-static {v0}, Lb/e;->a(Ljava/lang/String;)Lb/e;

    move-result-object v0

    sput-object v0, La/a/c/f;->d:Lb/e;

    const-string v0, ":path"

    invoke-static {v0}, Lb/e;->a(Ljava/lang/String;)Lb/e;

    move-result-object v0

    sput-object v0, La/a/c/f;->e:Lb/e;

    const-string v0, ":scheme"

    invoke-static {v0}, Lb/e;->a(Ljava/lang/String;)Lb/e;

    move-result-object v0

    sput-object v0, La/a/c/f;->f:Lb/e;

    const-string v0, ":authority"

    invoke-static {v0}, Lb/e;->a(Ljava/lang/String;)Lb/e;

    move-result-object v0

    sput-object v0, La/a/c/f;->b:Lb/e;

    const-string v0, ":host"

    invoke-static {v0}, Lb/e;->a(Ljava/lang/String;)Lb/e;

    move-result-object v0

    sput-object v0, La/a/c/f;->c:Lb/e;

    const-string v0, ":version"

    invoke-static {v0}, Lb/e;->a(Ljava/lang/String;)Lb/e;

    move-result-object v0

    sput-object v0, La/a/c/f;->g:Lb/e;

    return-void
.end method

.method public constructor <init>(Lb/e;Lb/e;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/a/c/f;->i:Lb/e;

    iput-object p2, p0, La/a/c/f;->j:Lb/e;

    invoke-virtual {p1}, Lb/e;->c()I

    move-result v0

    add-int/lit8 v0, v0, 0x20

    invoke-virtual {p2}, Lb/e;->c()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, La/a/c/f;->h:I

    return-void
.end method

.method public constructor <init>(Lb/e;Ljava/lang/String;)V
    .locals 1

    invoke-static {p2}, Lb/e;->a(Ljava/lang/String;)Lb/e;

    move-result-object v0

    invoke-direct {p0, p1, v0}, La/a/c/f;-><init>(Lb/e;Lb/e;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lb/e;->a(Ljava/lang/String;)Lb/e;

    move-result-object v0

    invoke-static {p2}, Lb/e;->a(Ljava/lang/String;)Lb/e;

    move-result-object v1

    invoke-direct {p0, v0, v1}, La/a/c/f;-><init>(Lb/e;Lb/e;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, La/a/c/f;

    if-eqz v1, :cond_0

    check-cast p1, La/a/c/f;

    iget-object v1, p0, La/a/c/f;->i:Lb/e;

    iget-object v2, p1, La/a/c/f;->i:Lb/e;

    invoke-virtual {v1, v2}, Lb/e;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, La/a/c/f;->j:Lb/e;

    iget-object v2, p1, La/a/c/f;->j:Lb/e;

    invoke-virtual {v1, v2}, Lb/e;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, La/a/c/f;->i:Lb/e;

    invoke-virtual {v0}, Lb/e;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, La/a/c/f;->j:Lb/e;

    invoke-virtual {v1}, Lb/e;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    const-string v0, "%s: %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, La/a/c/f;->i:Lb/e;

    invoke-virtual {v3}, Lb/e;->f()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, La/a/c/f;->j:Lb/e;

    invoke-virtual {v3}, Lb/e;->f()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, La/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
