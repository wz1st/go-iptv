.class public Lcom/g/a/q;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/g/a/a/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/g/a/q$a;,
        Lcom/g/a/q$b;,
        Lcom/g/a/q$c;,
        Lcom/g/a/q$d;
    }
.end annotation


# static fields
.field static a:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Class;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field b:Lcom/g/a/i;

.field c:Ljava/nio/ByteOrder;

.field d:Lcom/g/a/h;

.field private e:Lcom/g/a/q$d;

.field private f:Lcom/g/a/q$d;

.field private g:Lcom/g/a/q$d;

.field private h:Lcom/g/a/q$d;

.field private i:Lcom/g/a/q$d;

.field private j:Lcom/g/a/q$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/g/a/q$a",
            "<[B>;"
        }
    .end annotation
.end field

.field private k:Lcom/g/a/q$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/g/a/q$a",
            "<",
            "Lcom/g/a/h;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/g/a/q$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/g/a/q$a",
            "<[B>;"
        }
    .end annotation
.end field

.field private m:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/g/a/q$d;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/g/a/q;->a:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>(Lcom/g/a/i;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/g/a/aa;

    invoke-direct {v0, p0}, Lcom/g/a/aa;-><init>(Lcom/g/a/q;)V

    iput-object v0, p0, Lcom/g/a/q;->e:Lcom/g/a/q$d;

    new-instance v0, Lcom/g/a/ab;

    invoke-direct {v0, p0}, Lcom/g/a/ab;-><init>(Lcom/g/a/q;)V

    iput-object v0, p0, Lcom/g/a/q;->f:Lcom/g/a/q$d;

    new-instance v0, Lcom/g/a/ac;

    invoke-direct {v0, p0}, Lcom/g/a/ac;-><init>(Lcom/g/a/q;)V

    iput-object v0, p0, Lcom/g/a/q;->g:Lcom/g/a/q$d;

    new-instance v0, Lcom/g/a/ad;

    invoke-direct {v0, p0}, Lcom/g/a/ad;-><init>(Lcom/g/a/q;)V

    iput-object v0, p0, Lcom/g/a/q;->h:Lcom/g/a/q$d;

    new-instance v0, Lcom/g/a/ae;

    invoke-direct {v0, p0}, Lcom/g/a/ae;-><init>(Lcom/g/a/q;)V

    iput-object v0, p0, Lcom/g/a/q;->i:Lcom/g/a/q$d;

    new-instance v0, Lcom/g/a/af;

    invoke-direct {v0, p0}, Lcom/g/a/af;-><init>(Lcom/g/a/q;)V

    iput-object v0, p0, Lcom/g/a/q;->j:Lcom/g/a/q$a;

    new-instance v0, Lcom/g/a/ag;

    invoke-direct {v0, p0}, Lcom/g/a/ag;-><init>(Lcom/g/a/q;)V

    iput-object v0, p0, Lcom/g/a/q;->k:Lcom/g/a/q$a;

    new-instance v0, Lcom/g/a/ah;

    invoke-direct {v0, p0}, Lcom/g/a/ah;-><init>(Lcom/g/a/q;)V

    iput-object v0, p0, Lcom/g/a/q;->l:Lcom/g/a/q$a;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/g/a/q;->m:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/g/a/q;->n:Ljava/util/ArrayList;

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Lcom/g/a/q;->c:Ljava/nio/ByteOrder;

    new-instance v0, Lcom/g/a/h;

    invoke-direct {v0}, Lcom/g/a/h;-><init>()V

    iput-object v0, p0, Lcom/g/a/q;->d:Lcom/g/a/h;

    iput-object p1, p0, Lcom/g/a/q;->b:Lcom/g/a/i;

    iget-object v0, p0, Lcom/g/a/q;->b:Lcom/g/a/i;

    invoke-interface {v0, p0}, Lcom/g/a/i;->a(Lcom/g/a/a/c;)V

    return-void
.end method

.method static synthetic a(Lcom/g/a/q;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/g/a/q;->n:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public a(BLcom/g/a/a/c;)Lcom/g/a/q;
    .locals 2

    iget-object v0, p0, Lcom/g/a/q;->m:Ljava/util/LinkedList;

    new-instance v1, Lcom/g/a/q$c;

    invoke-direct {v1, p1, p2}, Lcom/g/a/q$c;-><init>(BLcom/g/a/a/c;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a(ILcom/g/a/q$a;)Lcom/g/a/q;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/g/a/q$a",
            "<[B>;)",
            "Lcom/g/a/q;"
        }
    .end annotation

    iget-object v0, p0, Lcom/g/a/q;->m:Ljava/util/LinkedList;

    new-instance v1, Lcom/g/a/q$b;

    invoke-direct {v1, p1, p2}, Lcom/g/a/q$b;-><init>(ILcom/g/a/q$a;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a(Lcom/g/a/i;Lcom/g/a/h;)V
    .locals 2

    iget-object v0, p0, Lcom/g/a/q;->d:Lcom/g/a/h;

    invoke-virtual {p2, v0}, Lcom/g/a/h;->a(Lcom/g/a/h;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/g/a/q;->m:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/g/a/q;->d:Lcom/g/a/h;

    invoke-virtual {v0}, Lcom/g/a/h;->l()I

    move-result v1

    iget-object v0, p0, Lcom/g/a/q;->m:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/g/a/q$d;

    iget v0, v0, Lcom/g/a/q$d;->c:I

    if-lt v1, v0, :cond_1

    iget-object v0, p0, Lcom/g/a/q;->d:Lcom/g/a/h;

    iget-object v1, p0, Lcom/g/a/q;->c:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Lcom/g/a/h;->a(Ljava/nio/ByteOrder;)Lcom/g/a/h;

    iget-object v0, p0, Lcom/g/a/q;->m:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/g/a/q$d;

    iget-object v1, p0, Lcom/g/a/q;->d:Lcom/g/a/h;

    invoke-virtual {v0, p1, v1}, Lcom/g/a/q$d;->a(Lcom/g/a/i;Lcom/g/a/h;)Lcom/g/a/q$d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/g/a/q;->m:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/g/a/q;->m:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/g/a/q;->d:Lcom/g/a/h;

    invoke-virtual {v0, p2}, Lcom/g/a/h;->a(Lcom/g/a/h;)V

    :cond_2
    return-void
.end method
