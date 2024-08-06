.class public final Lcom/b/a/h/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/a/c/h;


# static fields
.field private static final b:Lcom/b/a/h/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/b/a/h/a;

    invoke-direct {v0}, Lcom/b/a/h/a;-><init>()V

    sput-object v0, Lcom/b/a/h/a;->b:Lcom/b/a/h/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/b/a/h/a;
    .locals 1

    sget-object v0, Lcom/b/a/h/a;->b:Lcom/b/a/h/a;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/security/MessageDigest;)V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "EmptySignature"

    return-object v0
.end method
