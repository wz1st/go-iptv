.class public final enum Lcom/b/a/c/d/a/j$g;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/c/d/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/b/a/c/d/a/j$g;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/b/a/c/d/a/j$g;

.field public static final enum b:Lcom/b/a/c/d/a/j$g;

.field private static final synthetic c:[Lcom/b/a/c/d/a/j$g;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/b/a/c/d/a/j$g;

    const-string v1, "MEMORY"

    invoke-direct {v0, v1, v2}, Lcom/b/a/c/d/a/j$g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/b/a/c/d/a/j$g;->a:Lcom/b/a/c/d/a/j$g;

    new-instance v0, Lcom/b/a/c/d/a/j$g;

    const-string v1, "QUALITY"

    invoke-direct {v0, v1, v3}, Lcom/b/a/c/d/a/j$g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/b/a/c/d/a/j$g;->b:Lcom/b/a/c/d/a/j$g;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/b/a/c/d/a/j$g;

    sget-object v1, Lcom/b/a/c/d/a/j$g;->a:Lcom/b/a/c/d/a/j$g;

    aput-object v1, v0, v2

    sget-object v1, Lcom/b/a/c/d/a/j$g;->b:Lcom/b/a/c/d/a/j$g;

    aput-object v1, v0, v3

    sput-object v0, Lcom/b/a/c/d/a/j$g;->c:[Lcom/b/a/c/d/a/j$g;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/b/a/c/d/a/j$g;
    .locals 1

    const-class v0, Lcom/b/a/c/d/a/j$g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/b/a/c/d/a/j$g;

    return-object v0
.end method

.method public static values()[Lcom/b/a/c/d/a/j$g;
    .locals 1

    sget-object v0, Lcom/b/a/c/d/a/j$g;->c:[Lcom/b/a/c/d/a/j$g;

    invoke-virtual {v0}, [Lcom/b/a/c/d/a/j$g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/b/a/c/d/a/j$g;

    return-object v0
.end method
