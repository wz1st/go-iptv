.class public Lcom/b/a/g/b/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/a/g/b/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/b/a/g/b/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/b/a/g/b/b",
        "<TR;>;"
    }
.end annotation


# static fields
.field static final a:Lcom/b/a/g/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/g/b/a",
            "<*>;"
        }
    .end annotation
.end field

.field private static final b:Lcom/b/a/g/b/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/g/b/c",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/b/a/g/b/a;

    invoke-direct {v0}, Lcom/b/a/g/b/a;-><init>()V

    sput-object v0, Lcom/b/a/g/b/a;->a:Lcom/b/a/g/b/a;

    new-instance v0, Lcom/b/a/g/b/a$a;

    invoke-direct {v0}, Lcom/b/a/g/b/a$a;-><init>()V

    sput-object v0, Lcom/b/a/g/b/a;->b:Lcom/b/a/g/b/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/b/a/g/b/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/b/a/g/b/c",
            "<TR;>;"
        }
    .end annotation

    sget-object v0, Lcom/b/a/g/b/a;->b:Lcom/b/a/g/b/c;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lcom/b/a/g/b/b$a;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
