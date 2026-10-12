.class public final Lcom/b/a/c/d/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/a/c/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/b/a/c/m",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final b:Lcom/b/a/c/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/c/m",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/b/a/c/d/b;

    invoke-direct {v0}, Lcom/b/a/c/d/b;-><init>()V

    sput-object v0, Lcom/b/a/c/d/b;->b:Lcom/b/a/c/m;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/b/a/c/d/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/b/a/c/d/b",
            "<TT;>;"
        }
    .end annotation

    sget-object v0, Lcom/b/a/c/d/b;->b:Lcom/b/a/c/m;

    check-cast v0, Lcom/b/a/c/d/b;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/b/a/c/b/u;II)Lcom/b/a/c/b/u;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/b/a/c/b/u",
            "<TT;>;II)",
            "Lcom/b/a/c/b/u",
            "<TT;>;"
        }
    .end annotation

    return-object p2
.end method

.method public a(Ljava/security/MessageDigest;)V
    .locals 0

    return-void
.end method
