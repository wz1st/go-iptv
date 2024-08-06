.class public Lcom/b/a/g/b/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/a/g/b/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/g/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/b/a/g/b/c",
        "<TR;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/b/a/c/a;Z)Lcom/b/a/g/b/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/c/a;",
            "Z)",
            "Lcom/b/a/g/b/b",
            "<TR;>;"
        }
    .end annotation

    sget-object v0, Lcom/b/a/g/b/a;->a:Lcom/b/a/g/b/a;

    return-object v0
.end method
