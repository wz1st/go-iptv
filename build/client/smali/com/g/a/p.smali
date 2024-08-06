.class public Lcom/g/a/p;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/g/a/a/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/g/a/p$a;
    }
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field b:Ljava/nio/charset/Charset;

.field c:Lcom/g/a/h;

.field d:Lcom/g/a/p$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/g/a/p;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/g/a/p;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/g/a/p;-><init>(Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/g/a/h;

    invoke-direct {v0}, Lcom/g/a/h;-><init>()V

    iput-object v0, p0, Lcom/g/a/p;->c:Lcom/g/a/h;

    iput-object p1, p0, Lcom/g/a/p;->b:Ljava/nio/charset/Charset;

    return-void
.end method


# virtual methods
.method public a(Lcom/g/a/i;Lcom/g/a/h;)V
    .locals 3

    invoke-virtual {p2}, Lcom/g/a/h;->l()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    :goto_0
    invoke-virtual {p2}, Lcom/g/a/h;->l()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {p2}, Lcom/g/a/h;->a()B

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    sget-boolean v1, Lcom/g/a/p;->a:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/g/a/p;->d:Lcom/g/a/p$a;

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/g/a/p;->c:Lcom/g/a/h;

    invoke-virtual {v1, v0}, Lcom/g/a/h;->b(Ljava/nio/ByteBuffer;)Lcom/g/a/h;

    iget-object v0, p0, Lcom/g/a/p;->d:Lcom/g/a/p$a;

    iget-object v1, p0, Lcom/g/a/p;->c:Lcom/g/a/h;

    iget-object v2, p0, Lcom/g/a/p;->b:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Lcom/g/a/h;->b(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/g/a/p$a;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/g/a/h;

    invoke-direct {v0}, Lcom/g/a/h;-><init>()V

    iput-object v0, p0, Lcom/g/a/p;->c:Lcom/g/a/h;

    :goto_1
    return-void

    :cond_1
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/g/a/p;->c:Lcom/g/a/h;

    invoke-virtual {v1, v0}, Lcom/g/a/h;->b(Ljava/nio/ByteBuffer;)Lcom/g/a/h;

    goto :goto_1
.end method

.method public a(Lcom/g/a/p$a;)V
    .locals 0

    iput-object p1, p0, Lcom/g/a/p;->d:Lcom/g/a/p$a;

    return-void
.end method
