.class public abstract Lcom/b/a/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CHI",
        "LD:Lcom/b/a/k",
        "<TCHI",
        "LD;",
        "TTranscodeType;>;TranscodeType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private a:Lcom/b/a/g/b/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/g/b/c",
            "<-TTranscodeType;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/b/a/g/b/a;->a()Lcom/b/a/g/b/c;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/k;->a:Lcom/b/a/g/b/c;

    return-void
.end method


# virtual methods
.method public final a()Lcom/b/a/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TCHI",
            "LD;"
        }
    .end annotation

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/k;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method final b()Lcom/b/a/g/b/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/b/a/g/b/c",
            "<-TTranscodeType;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/b/a/k;->a:Lcom/b/a/g/b/c;

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/b/a/k;->a()Lcom/b/a/k;

    move-result-object v0

    return-object v0
.end method
