.class public enum Lcom/g/a/c/g;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/g/a/c/g;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/g/a/c/g;

.field public static final enum b:Lcom/g/a/c/g;

.field public static final enum c:Lcom/g/a/c/g;

.field public static final enum d:Lcom/g/a/c/g;

.field private static final e:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/g/a/c/g;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic f:[Lcom/g/a/c/g;


# instance fields
.field private final g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/g/a/c/g;

    const-string v1, "HTTP_1_0"

    const-string v2, "http/1.0"

    invoke-direct {v0, v1, v3, v2}, Lcom/g/a/c/g;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/g/a/c/g;->a:Lcom/g/a/c/g;

    new-instance v0, Lcom/g/a/c/g;

    const-string v1, "HTTP_1_1"

    const-string v2, "http/1.1"

    invoke-direct {v0, v1, v4, v2}, Lcom/g/a/c/g;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/g/a/c/g;->b:Lcom/g/a/c/g;

    new-instance v0, Lcom/g/a/c/l;

    const-string v1, "SPDY_3"

    const-string v2, "spdy/3.1"

    invoke-direct {v0, v1, v2}, Lcom/g/a/c/l;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/g/a/c/g;->d:Lcom/g/a/c/g;

    new-instance v0, Lcom/g/a/c/m;

    const-string v1, "HTTP_2"

    const-string v2, "h2-13"

    invoke-direct {v0, v1, v2}, Lcom/g/a/c/m;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/g/a/c/g;->c:Lcom/g/a/c/g;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/g/a/c/g;

    sget-object v1, Lcom/g/a/c/g;->a:Lcom/g/a/c/g;

    aput-object v1, v0, v3

    sget-object v1, Lcom/g/a/c/g;->b:Lcom/g/a/c/g;

    aput-object v1, v0, v4

    const/4 v1, 0x2

    sget-object v2, Lcom/g/a/c/g;->d:Lcom/g/a/c/g;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/g/a/c/g;->c:Lcom/g/a/c/g;

    aput-object v2, v0, v1

    sput-object v0, Lcom/g/a/c/g;->f:[Lcom/g/a/c/g;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/g/a/c/g;->e:Ljava/util/Hashtable;

    sget-object v1, Lcom/g/a/c/g;->a:Lcom/g/a/c/g;

    invoke-virtual {v1}, Lcom/g/a/c/g;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/g/a/c/g;->a:Lcom/g/a/c/g;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/g/a/c/g;->e:Ljava/util/Hashtable;

    sget-object v1, Lcom/g/a/c/g;->b:Lcom/g/a/c/g;

    invoke-virtual {v1}, Lcom/g/a/c/g;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/g/a/c/g;->b:Lcom/g/a/c/g;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/g/a/c/g;->e:Ljava/util/Hashtable;

    sget-object v1, Lcom/g/a/c/g;->d:Lcom/g/a/c/g;

    invoke-virtual {v1}, Lcom/g/a/c/g;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/g/a/c/g;->d:Lcom/g/a/c/g;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/g/a/c/g;->e:Ljava/util/Hashtable;

    sget-object v1, Lcom/g/a/c/g;->c:Lcom/g/a/c/g;

    invoke-virtual {v1}, Lcom/g/a/c/g;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/g/a/c/g;->c:Lcom/g/a/c/g;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/g/a/c/g;->g:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;B)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/g/a/c/g;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/g/a/c/g;
    .locals 1

    const-class v0, Lcom/g/a/c/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/g/a/c/g;

    return-object v0
.end method

.method public static values()[Lcom/g/a/c/g;
    .locals 1

    sget-object v0, Lcom/g/a/c/g;->f:[Lcom/g/a/c/g;

    invoke-virtual {v0}, [Lcom/g/a/c/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/g/a/c/g;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/g/a/c/g;->g:Ljava/lang/String;

    return-object v0
.end method
