.class public final enum Landroid/support/constraint/a/h$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/constraint/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/support/constraint/a/h$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Landroid/support/constraint/a/h$a;

.field public static final enum b:Landroid/support/constraint/a/h$a;

.field public static final enum c:Landroid/support/constraint/a/h$a;

.field public static final enum d:Landroid/support/constraint/a/h$a;

.field public static final enum e:Landroid/support/constraint/a/h$a;

.field private static final synthetic f:[Landroid/support/constraint/a/h$a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Landroid/support/constraint/a/h$a;

    const-string v1, "UNRESTRICTED"

    invoke-direct {v0, v1, v2}, Landroid/support/constraint/a/h$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/support/constraint/a/h$a;->a:Landroid/support/constraint/a/h$a;

    new-instance v0, Landroid/support/constraint/a/h$a;

    const-string v1, "CONSTANT"

    invoke-direct {v0, v1, v3}, Landroid/support/constraint/a/h$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/support/constraint/a/h$a;->b:Landroid/support/constraint/a/h$a;

    new-instance v0, Landroid/support/constraint/a/h$a;

    const-string v1, "SLACK"

    invoke-direct {v0, v1, v4}, Landroid/support/constraint/a/h$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/support/constraint/a/h$a;->c:Landroid/support/constraint/a/h$a;

    new-instance v0, Landroid/support/constraint/a/h$a;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v5}, Landroid/support/constraint/a/h$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/support/constraint/a/h$a;->d:Landroid/support/constraint/a/h$a;

    new-instance v0, Landroid/support/constraint/a/h$a;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v6}, Landroid/support/constraint/a/h$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/support/constraint/a/h$a;->e:Landroid/support/constraint/a/h$a;

    const/4 v0, 0x5

    new-array v0, v0, [Landroid/support/constraint/a/h$a;

    sget-object v1, Landroid/support/constraint/a/h$a;->a:Landroid/support/constraint/a/h$a;

    aput-object v1, v0, v2

    sget-object v1, Landroid/support/constraint/a/h$a;->b:Landroid/support/constraint/a/h$a;

    aput-object v1, v0, v3

    sget-object v1, Landroid/support/constraint/a/h$a;->c:Landroid/support/constraint/a/h$a;

    aput-object v1, v0, v4

    sget-object v1, Landroid/support/constraint/a/h$a;->d:Landroid/support/constraint/a/h$a;

    aput-object v1, v0, v5

    sget-object v1, Landroid/support/constraint/a/h$a;->e:Landroid/support/constraint/a/h$a;

    aput-object v1, v0, v6

    sput-object v0, Landroid/support/constraint/a/h$a;->f:[Landroid/support/constraint/a/h$a;

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

.method public static valueOf(Ljava/lang/String;)Landroid/support/constraint/a/h$a;
    .locals 1

    const-class v0, Landroid/support/constraint/a/h$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/a/h$a;

    return-object v0
.end method

.method public static values()[Landroid/support/constraint/a/h$a;
    .locals 1

    sget-object v0, Landroid/support/constraint/a/h$a;->f:[Landroid/support/constraint/a/h$a;

    invoke-virtual {v0}, [Landroid/support/constraint/a/h$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/constraint/a/h$a;

    return-object v0
.end method
