.class public final Lcom/b/a/a/a$d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/b/a/a/a;

.field private final b:Ljava/lang/String;

.field private final c:J

.field private final d:[J

.field private final e:[Ljava/io/File;


# direct methods
.method private constructor <init>(Lcom/b/a/a/a;Ljava/lang/String;J[Ljava/io/File;[J)V
    .locals 1

    iput-object p1, p0, Lcom/b/a/a/a$d;->a:Lcom/b/a/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/b/a/a/a$d;->b:Ljava/lang/String;

    iput-wide p3, p0, Lcom/b/a/a/a$d;->c:J

    iput-object p5, p0, Lcom/b/a/a/a$d;->e:[Ljava/io/File;

    iput-object p6, p0, Lcom/b/a/a/a$d;->d:[J

    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/a/a;Ljava/lang/String;J[Ljava/io/File;[JLcom/b/a/a/a$1;)V
    .locals 1

    invoke-direct/range {p0 .. p6}, Lcom/b/a/a/a$d;-><init>(Lcom/b/a/a/a;Ljava/lang/String;J[Ljava/io/File;[J)V

    return-void
.end method


# virtual methods
.method public a(I)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/b/a/a/a$d;->e:[Ljava/io/File;

    aget-object v0, v0, p1

    return-object v0
.end method
