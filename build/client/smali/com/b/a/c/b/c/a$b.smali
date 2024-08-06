.class public interface abstract Lcom/b/a/c/b/c/a$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/c/b/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "b"
.end annotation


# static fields
.field public static final a:Lcom/b/a/c/b/c/a$b;

.field public static final b:Lcom/b/a/c/b/c/a$b;

.field public static final c:Lcom/b/a/c/b/c/a$b;

.field public static final d:Lcom/b/a/c/b/c/a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/b/a/c/b/c/a$b$1;

    invoke-direct {v0}, Lcom/b/a/c/b/c/a$b$1;-><init>()V

    sput-object v0, Lcom/b/a/c/b/c/a$b;->a:Lcom/b/a/c/b/c/a$b;

    new-instance v0, Lcom/b/a/c/b/c/a$b$2;

    invoke-direct {v0}, Lcom/b/a/c/b/c/a$b$2;-><init>()V

    sput-object v0, Lcom/b/a/c/b/c/a$b;->b:Lcom/b/a/c/b/c/a$b;

    new-instance v0, Lcom/b/a/c/b/c/a$b$3;

    invoke-direct {v0}, Lcom/b/a/c/b/c/a$b$3;-><init>()V

    sput-object v0, Lcom/b/a/c/b/c/a$b;->c:Lcom/b/a/c/b/c/a$b;

    sget-object v0, Lcom/b/a/c/b/c/a$b;->b:Lcom/b/a/c/b/c/a$b;

    sput-object v0, Lcom/b/a/c/b/c/a$b;->d:Lcom/b/a/c/b/c/a$b;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Throwable;)V
.end method
