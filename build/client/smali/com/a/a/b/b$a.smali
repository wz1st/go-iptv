.class public Lcom/a/a/b/b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/a/a/b/a/d;

.field public b:Lcom/a/a/b/l;

.field private final c:Lcom/a/a/b/l;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/a/a/b/l;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/a/a/b/b$a;->c:Lcom/a/a/b/l;

    iput-object p2, p0, Lcom/a/a/b/b$a;->d:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/a/a/b/b$a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/a/a/b/b$a;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/a/a/b/b$a;)Lcom/a/a/b/l;
    .locals 1

    iget-object v0, p0, Lcom/a/a/b/b$a;->c:Lcom/a/a/b/l;

    return-object v0
.end method
