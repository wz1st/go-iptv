.class final Lcom/b/a/c/b/b/j$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/a/i/a/a$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/c/b/b/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/security/MessageDigest;

.field private final b:Lcom/b/a/i/a/c;


# direct methods
.method constructor <init>(Ljava/security/MessageDigest;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/b/a/i/a/c;->a()Lcom/b/a/i/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/c/b/b/j$a;->b:Lcom/b/a/i/a/c;

    iput-object p1, p0, Lcom/b/a/c/b/b/j$a;->a:Ljava/security/MessageDigest;

    return-void
.end method


# virtual methods
.method public c_()Lcom/b/a/i/a/c;
    .locals 1

    iget-object v0, p0, Lcom/b/a/c/b/b/j$a;->b:Lcom/b/a/i/a/c;

    return-object v0
.end method
